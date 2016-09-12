as yet unclassified
initialize

	super initialize.
	barriers := Dictionary new.
	deferredActions := OrderedCollection new.
	remoteMessagesWorker := TKTWorker new.