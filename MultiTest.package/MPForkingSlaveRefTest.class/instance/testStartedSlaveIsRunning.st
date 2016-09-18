tests
testStartedSlaveIsRunning

	| forkedF |
	node := MPTestSlaveRef new.
	forkedF := node forkAndStartIn: MPMultiTestCase new.
	forkedF waitForCompletion: 1 second.
	
	self assert: node isRunning