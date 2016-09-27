tests
testKilledSlaveIsNotRunning

	| forkF |
	true ifTrue: [^ self skip].
	node := MTTestSlaveRef new.
	forkF := node forkAndStartIn: MTMultiTestCase new.
	forkF waitForCompletion: 1 second.
	
	node kill.
	1 second wait.
	
	self deny: node isRunning