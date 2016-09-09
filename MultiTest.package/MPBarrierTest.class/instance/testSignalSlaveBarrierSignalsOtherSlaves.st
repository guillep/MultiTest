tests
testSignalSlaveBarrierSignalsOtherSlaves

	| master slave1 slave2 |
	master := MPTestMasterRole new.
	slave1 := MPTestSlaveRole new.
	slave2 := MPTestSlaveRole new.
	
	slave1 testMaster: master.
	slave2 testMaster: master.
	
	master spawnImageWithId: #slave1 put: (MPTestSlaveNode new slaveProxy: slave1).
	master spawnImageWithId: #slave2 put: (MPTestSlaveNode new slaveProxy: slave2).
	
	slave1 announce: #test.
	
	self assert: (slave2 barrierAt: #test) isSignaled