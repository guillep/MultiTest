tests
testStartedSlaveIsRunning

	| forkedF |
	true ifTrue: [^ self skip].
	node := MPTestSlaveRef new.
	forkedF := node forkAndStartIn: MPMultiTestCase new.
	forkedF waitForCompletion: 1 second.
	
	self assert: node isRunning