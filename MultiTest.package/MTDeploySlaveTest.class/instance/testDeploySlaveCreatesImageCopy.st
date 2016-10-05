tests
testDeploySlaveCreatesImageCopy

	slaveRef deploy.
	
	self assert: slaveRef imageLocation exists