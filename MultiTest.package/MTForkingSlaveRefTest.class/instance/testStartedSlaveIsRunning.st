tests
testStartedSlaveIsRunning

	| forkedF |
	true ifTrue: [^ self skip].
	node := MTTestSlaveRef new.
	forkedF := node forkAndStartIn: MTMultiTestCase new.
	forkedF waitForCompletion: 1 second.
	
	self assert: node isRunning