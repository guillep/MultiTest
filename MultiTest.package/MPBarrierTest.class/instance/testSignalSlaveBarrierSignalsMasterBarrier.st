tests
testSignalSlaveBarrierSignalsMasterBarrier

	| master slave |
	master := MPTestMaster new.
	slave := MPTestSlave new.
	
	slave testMaster: master.
	
	slave announce: #test.
	
	self assert: (master barrierAt: #test) isSignaled