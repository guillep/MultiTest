as yet unclassified
slaveAtId: anId

	^ slaves
		at: anId
		ifAbsentPut: [ MPTestSlaveRef new
								id: anId;
								testMaster: self;
								yourself ]