tests
testSlaveRefCanRedeployAfterClean

	slaveRef deploy.
	slaveRef clean.
	slaveRef deploy.
	self assert: slaveRef isDeployed