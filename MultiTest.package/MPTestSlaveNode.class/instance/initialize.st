initialization
initialize

	super initialize.
	errors := OrderedCollection new.
	startedSemaphore := Semaphore new.