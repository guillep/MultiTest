as yet unclassified
broadcastBarrier: aBarrierId

	StringSignal emit: ('[MultiTest] Received barrier signal to master: {s}' format: { 's' -> aBarrierId asString } asDictionary).

	[ self slaves do: [ :slave | slave announce: aBarrierId ] ] fork.