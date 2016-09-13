start-stop
startIn: aTestCase
	
	| allForkedF allConnectedF |
	allForkedF := TKTFuture fromCollectionOfFutures: (self slaves
		collect: [ :each | each forkAndStartIn: aTestCase ]).
	
	allConnectedF := (allForkedF collect: [ self startServer ])
		flatCollect: [ :v | self slaves do: [ :each | each waitForPeer ] ].

	^ deferredActions
		inject: allConnectedF
		into: [ :future :nextAction | future collect: [ :v | nextAction value ] ]