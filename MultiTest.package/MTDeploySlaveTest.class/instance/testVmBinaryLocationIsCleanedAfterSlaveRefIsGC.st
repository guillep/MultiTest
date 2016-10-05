tests
testVmBinaryLocationIsCleanedAfterSlaveRefIsGC

	| vmBinaryLocation |
	slaveRef deploy.
	
	vmBinaryLocation := slaveRef vmBinaryLocation.

	slaveRef := nil.
	Smalltalk garbageCollect.
	
	self deny: vmBinaryLocation exists