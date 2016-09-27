accessing
announce: aBarrierId

	self scheduleRemote: [ 
		[
		StringSignal emit: ('[MultiTest] Sending signal to slave: {s}' format: { 's' -> aBarrierId asString } asDictionary).
		self remoteTestSlave announce: aBarrierId.
		StringSignal emit: ('[MultiTest] Send signal to slave: {s}' format: { 's' -> aBarrierId asString } asDictionary).]
			on: Error do: [ :err | 
				StringSignal emit: ('[MultiTest] Error while sending signal: {s}' format: { 's' -> err asString } asDictionary).
				err pass ] ]