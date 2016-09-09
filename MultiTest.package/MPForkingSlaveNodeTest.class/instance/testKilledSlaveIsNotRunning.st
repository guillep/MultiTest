as yet unclassified
testKilledSlaveIsNotRunning

	node := MPTestSlaveNode new.
	node start.
	1 second wait.
	
	node kill.
	
	self deny: node isRunning