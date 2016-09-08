accessing
waitStarted

	startedSemaphore isSignaled ifFalse: [ startedSemaphore wait ]