as yet unclassified
slaveAtId: anId

	^ slaves
		at: anId
		ifAbsentPut: [ MTTestSlaveRef new
								id: anId;
								testMaster: self;
								yourself ]