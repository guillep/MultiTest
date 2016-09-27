malvina integration
broadcastBarrier: aBarrierId

	StringSignal emit: ('[MultiTest] Received barrier signal to slave {s}' format: { 's' -> aBarrierId asString } asDictionary).
	masterRef announce: aBarrierId.