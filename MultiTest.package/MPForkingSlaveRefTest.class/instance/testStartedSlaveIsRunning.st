as yet unclassified
testStartedSlaveIsRunning

	node := MPTestSlaveRef new.
	node forkAndStartIn: MPMultiTestCase new.
	
	self assert: node isRunning