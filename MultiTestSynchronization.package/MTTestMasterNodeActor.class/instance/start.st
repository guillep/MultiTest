start-stop
start
	
	| allClonedF allForkedF serverStartedF processController |
	StringSignal emit: ('[MultiTest] Test-run: {test}' format: { 'test' -> testCase asString } asDictionary).
	
	processController := Semaphore new.
	
	allClonedF := self slaves
		inject: ((TKTFuture of: false) runner: workerPool; yourself)
		into: [ :acumF :eachSlave | acumF flatCollect: [ :previousAlreadyForked |
				previousAlreadyForked
					ifTrue: [ TKTFuture of: previousAlreadyForked ]
					ifFalse: [ eachSlave deploy collect: [ :isForked | 
							previousAlreadyForked or: [ isForked ] ] ] ] ].
	
	allClonedF onSuccessDo: [ :isForked | isForked ifFalse: [ processController signal ] ].
	processController wait.

	serverStartedF := allClonedF collect: [ :v | self startServer ].

	allForkedF := self slaves
		inject: serverStartedF
		into: [ :acumF :slave | 
			(acumF collect: [ :v | slave spawn ])
				collect: [ :v | slave waitForPeer: 2 seconds ] ].

	^ (deferredActions
		inject: allForkedF
		into: [ :future :nextAction | future collect: [ :v | nextAction value ] ])
			flatCollect: [ :v | 
				TKTFuture fromCollectionOfFutures: (self slaves
					collect: [ :each | each finishFuture ]) ]