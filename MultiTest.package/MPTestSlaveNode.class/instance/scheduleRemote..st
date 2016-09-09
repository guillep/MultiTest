malvina integration
scheduleRemote: aTask

	remoteMessagesWorker schedule: [ | done | 
		done := false.
		[ done ] whileFalse: [
			[ aTask value. done := true ]
				on: Error do: [ 100 milliSeconds wait ] ] ]