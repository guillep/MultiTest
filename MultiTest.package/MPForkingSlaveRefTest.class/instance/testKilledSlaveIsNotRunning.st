as yet unclassified
testKilledSlaveIsNotRunning

	node := MPTestSlaveRef new.
	node forkAndStartIn: MPMultiTestCase new.
	1 second wait.
	
	node kill.
	1 second wait.
	
	self deny: node isRunning