as yet unclassified
slaveAtId: anId

	^ slaves
		at: anId
		ifAbsentPut: [ MTTestSlaveActorRef new
								id: anId;
								testMaster: self;
								yourself ]