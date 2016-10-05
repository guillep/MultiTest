running
waitForCompletion: timeout

	process isRunning ifFalse: [ ^ self ].
	runner schedule: [ timeout wait. process stopWaiting ].
	process waitForExitPollingEvery: 50 milliSeconds retrievingStreams: false.