as yet unclassified
testStartedSlaveIsRunning

	node := MPTestSlaveNode new.
	node start.
	
	self assert: node isRunning