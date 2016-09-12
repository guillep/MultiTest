as yet unclassified
signal

	isSignaled ifTrue: [ ^ self ].
	isSignaled := true.
	semaphore signal.

	testNode broadcastBarrier: barrierId