tests
testDeploySlaveCreatesVMCopy

	slaveRef deploy.
	
	self assert: slaveRef vmBinaryLocation exists