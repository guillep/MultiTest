as yet unclassified
initialize

	super initialize.
	barriers := Dictionary new.
	deferredActions := OrderedCollection new.
	
	outboxWorker := TKTWorker new.
	outMessages := OrderedCollection new.