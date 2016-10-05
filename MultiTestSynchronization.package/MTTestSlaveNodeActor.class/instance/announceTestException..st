malvina integration
announceTestException: anException

	StringSignal emit: ('[MultiTest] Test exception: {ex}' format: { 'ex' -> anException asString } asDictionary).
	masterRef announceTestException: anException.