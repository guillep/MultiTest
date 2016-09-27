as yet unclassified
announce: aBarrierId

	[self scheduleRemote: [ 
		[ self remoteTestMaster announce: aBarrierId.
		StringSignal emit: ('[MultiTest] Send signal to master {s}' format: { 's' -> aBarrierId asString } asDictionary).] ifError: [ 
			StringSignal emit: ('[MultiTest] Error while sending signal: {s}' format: { 's' -> aBarrierId asString } asDictionary). ] ]] fork