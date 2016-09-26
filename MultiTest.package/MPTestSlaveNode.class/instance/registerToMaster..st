forking
registerToMaster: masterRef

	StringSignal emit: ('[MultiTest] Registering {id} to master' format: { 'id' -> id printString } asDictionary).
	masterRef sendRequest: (MPRegisterSlaveRequest new id: id).
	StringSignal emit: ('[MultiTest] Slave {id} registered to master' format: { 'id' -> id printString } asDictionary).