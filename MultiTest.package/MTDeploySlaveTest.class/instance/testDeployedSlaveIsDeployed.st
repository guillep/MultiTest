tests
testDeployedSlaveIsDeployed

	slaveRef deploy.
	
	self assert: slaveRef isDeployed