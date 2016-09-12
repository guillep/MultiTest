as yet unclassified
testKilledSlaveIsNotRunning

	node := MPTestSlaveNode new.
	node start.
	1 second wait.
	
	node kill.
	1 second wait.
	
	self deny: node isRunning