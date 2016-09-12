malvina integration
announceTestFinished

	^ self scheduleRemote: [ 
		self remoteTestMaster announceFinished: id ]