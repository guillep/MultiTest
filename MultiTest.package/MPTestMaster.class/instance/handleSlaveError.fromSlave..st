as yet unclassified
handleSlaveError: error fromSlave: aSlave

	(self spawnedImages detect: [ :each | each hasSlaveProxy: aSlave ])
		addError: error asLocalObject.