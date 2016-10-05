accessing
slaveAtId: anId

	^ slaves
		at: anId
		ifAbsentPut: [ MTTestSlaveRef id: anId forTestCase: testCase ]