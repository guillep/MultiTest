tests
testDeployTwiceRaisesFileExistsException

	slaveRef deploy.
	self should: [slaveRef deploy] raise: FileExists.