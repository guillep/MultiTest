tests
testSlaveRefIsNotDeployedAfterClean

	slaveRef deploy.
	slaveRef clean.
	self deny: slaveRef isDeployed