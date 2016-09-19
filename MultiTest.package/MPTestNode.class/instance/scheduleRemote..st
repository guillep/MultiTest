malvina integration
scheduleRemote: aTask

	outMessages add: (outboxWorker future: [ | done triesLeft |
		triesLeft := 3. 
		done := false.
		[ done or: [ triesLeft == 0 ] ] whileFalse: [
			[ triesLeft := triesLeft - 1. 
			aTask value. 
			done := true ]
				on: Error do: [ 500 milliSeconds wait ] ] ])