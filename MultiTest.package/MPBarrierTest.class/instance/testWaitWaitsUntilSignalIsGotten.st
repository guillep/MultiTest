tests
testWaitWaitsUntilSignalIsGotten

	| master slave |
	master := MPTestMaster new.
	slave := MPTestSlave new.
	
	slave testMaster: master.
	
	[0.5 seconds wait.
	slave announce: #test] fork.
	master waitFor: #test.