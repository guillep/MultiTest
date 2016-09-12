malvina integration
scheduleRemote: aTask

	remoteMessagesWorker schedule: [ | done triesLeft |
		triesLeft := 3. 
		done := false.
		[ done or: [ triesLeft == 0 ] ] whileFalse: [
			[ triesLeft := triesLeft - 1. 
			aTask value. 
			done := true ]
				on: Error do: [ 100 milliSeconds wait ] ] ]