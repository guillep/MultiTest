tests
testKilledSlaveIsNotRunning

	| forkF |
	true ifTrue: [^ self skip].
	node := MPTestSlaveRef new.
	forkF := node forkAndStartIn: MPMultiTestCase new.
	forkF waitForCompletion: 1 second.
	
	node kill.
	1 second wait.
	
	self deny: node isRunning