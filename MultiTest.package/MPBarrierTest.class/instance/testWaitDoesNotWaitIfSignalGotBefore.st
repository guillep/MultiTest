tests
testWaitDoesNotWaitIfSignalGotBefore

	| master slave1 slave2 |
	master := MPTestMaster new.
	slave1 := MPTestSlave new.
	slave2 := MPTestSlave new.
	
	slave1 testMaster: master.
	slave2 testMaster: master.
	
	master spawnImageWithId: #slave1 put: (MPSpawnedImage new slaveProxy: slave1).
	master spawnImageWithId: #slave2 put: (MPSpawnedImage new slaveProxy: slave2).
	
	slave1 announce: #test.
	slave1 waitFor: #test.