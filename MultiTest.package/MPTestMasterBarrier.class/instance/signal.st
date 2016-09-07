as yet unclassified
signal

	isSignaled ifTrue: [ ^ self ].
	isSignaled := true.
	semaphore signal.

	testCaseRole spawnedImages do: [ :image | image announce: barrierId ]