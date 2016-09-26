start-stop
start
	
	| allClonedF allForkedF allConnectedF testProcess serverStartedF |
	StringSignal emit: ('[MultiTest] Test-run: {test}' format: { 'test' -> testCase asString } asDictionary).
	
	testProcess := Processor activeProcess.
	
	allClonedF := self slaves
		inject: (TKTFuture of: false)
		into: [ :acumF :eachSlave | acumF flatCollect: [ :previousAlreadyForked |
				previousAlreadyForked
					ifTrue: [ TKTFuture of: previousAlreadyForked ]
					ifFalse: [ eachSlave deploy collect: [ :isForked | 
							previousAlreadyForked or: [ isForked ] ] ] ] ].
	
	allClonedF onSuccessDo: [ :isForked | isForked ifFalse: [ testProcess resume ] ].
	testProcess suspend.

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