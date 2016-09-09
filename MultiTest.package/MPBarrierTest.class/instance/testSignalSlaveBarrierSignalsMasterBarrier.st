tests
testSignalSlaveBarrierSignalsMasterBarrier

	| master slave |
	master := MPTestMasterRole new.
	slave := MPTestSlaveRole new.
	
	slave testMaster: master.
	
	slave announce: #test.
	
	self assert: (master barrierAt: #test) isSignaled