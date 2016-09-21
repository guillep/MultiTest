start-stop
startIn: aTestCase
	
	| allForkedF allConnectedF |
	StringSignal emit: ('[MultiTest] Test-run: {test}' format: { 'test' -> testCase asString } asDictionary).
	allForkedF := TKTFuture fromCollectionOfFutures: (self slaves
		collect: [ :each | each forkAndStartIn: aTestCase ]).
	
	allConnectedF := (allForkedF collect: [ :v | self startServer ])
		collect: [ :v | self slaves do: [ :each | each waitForPeer: 2 seconds ] ].

	^ (deferredActions
		inject: allConnectedF
		into: [ :future :nextAction | future collect: [ :v | nextAction value ] ])
			flatCollect: [ :v | 
				TKTFuture fromCollectionOfFutures: (self slaves
					collect: [ :each | each finishFuture ]) ]