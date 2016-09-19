forking
registerToMaster: masterRef

	masterRef sendRequest: (MPRegisterSlaveRequest new id: id).
	StringSignal emit: ('[MultiTest] Slave {id} registered to master' format: { 'id' -> id printString } asDictionary).