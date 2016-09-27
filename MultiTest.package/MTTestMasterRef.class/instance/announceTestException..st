as yet unclassified
announceTestException: anException

	StringSignal emit: ('[MultiTest] Test exception: {ex}' format: { 'ex' -> anException asString } asDictionary).
	self scheduleRemote: [
		self remoteTestMaster handleSlaveError: anException fromSlaveWithId: slaveNode id ] 