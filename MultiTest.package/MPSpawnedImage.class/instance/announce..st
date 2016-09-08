testing
announce: aBarrierId

	(slaveProxy isConnectedToRemotePeer)
		ifTrue: [ slaveProxy announce: aBarrierId ]