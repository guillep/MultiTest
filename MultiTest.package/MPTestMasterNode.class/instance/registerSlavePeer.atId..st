start-stop
registerSlavePeer: aPeer atId: anId

	| slaveRef |
	slaveRef := slaves at: anId.
	slaveRef registerPeer: aPeer.