as yet unclassified
waitStarted

	startedSemaphore isSignaled ifFalse: [ startedSemaphore wait ]