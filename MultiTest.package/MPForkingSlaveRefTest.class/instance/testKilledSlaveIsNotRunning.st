tests
testKilledSlaveIsNotRunning

	| forkF |
	node := MPTestSlaveRef new.
	forkF := node forkAndStartIn: MPMultiTestCase new.
	forkF waitForCompletion: 1 second.
	
	node kill.
	1 second wait.
	
	self deny: node isRunning