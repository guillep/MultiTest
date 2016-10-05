as yet unclassified
registerSlave: aSlaveNode

	StringSignal emit: ('[MultiTest] Registering {id} to master' format: { 'id' -> aSlaveNode id printString } asDictionary).
	masterRemoteRef sendRequest: (MTRegisterSlaveRequest new id: aSlaveNode id).
	StringSignal emit: ('[MultiTest] Slave {id} registered to master' format: { 'id' -> aSlaveNode id printString } asDictionary).