tests
testImageLocationIsCleanedAfterSlaveRefIsGC

	| imageLocation |
	slaveRef deploy.
	
	imageLocation := slaveRef imageLocation.

	slaveRef := nil.
	Smalltalk garbageCollect.
	
	self deny: imageLocation exists