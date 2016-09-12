initialization
initialize

	super initialize.
	deferredActions := OrderedCollection new.
	errors := OrderedCollection new.
	
	connectionSemaphore := Semaphore new.
	finishedSemaphore := Semaphore new.