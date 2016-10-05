instance creation
forSlave: slaveId selector: testSelector
	
	^ (self selector: testSelector)
		beSlaveNode: slaveId;
		yourself