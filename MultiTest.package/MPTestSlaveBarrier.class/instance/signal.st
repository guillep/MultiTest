as yet unclassified
signal

	isSignaled ifTrue: [ ^ self ].
	isSignaled := true.
	semaphore signal.
	
	testCaseRole testMaster announce: barrierId.