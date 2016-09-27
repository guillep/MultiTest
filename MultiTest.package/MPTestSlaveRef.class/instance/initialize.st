initialization
initialize

	super initialize.
	deferredActions := OrderedCollection new.
	errors := OrderedCollection new.
	
	connectionSemaphore := Semaphore new.
	commandRunner := TKTNewProcessTaskRunner new.
	
	outboxWorker := TKTWorker new start.
	outMessages := OrderedCollection new.