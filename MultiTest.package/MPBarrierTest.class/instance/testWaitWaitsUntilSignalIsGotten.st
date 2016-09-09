tests
testWaitWaitsUntilSignalIsGotten

	| master slave |
	master := MPTestMasterRole new.
	slave := MPTestSlaveRole new.
	
	slave testMaster: master.
	
	[0.5 seconds wait.
	slave announce: #test] fork.
	master waitFor: #test.