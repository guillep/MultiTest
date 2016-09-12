malvina integration
announceTestException: anException

	self scheduleRemote: [
		self remoteTestMaster handleSlaveError: anException fromSlaveWithId: id ] 