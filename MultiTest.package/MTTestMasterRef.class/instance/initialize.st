as yet unclassified
initialize

	super initialize.
	outboxWorker := TKTWorker new start.
	outMessages := OrderedCollection new.