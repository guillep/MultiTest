as yet unclassified
initialize

	super initialize.
	barriers := Dictionary new.
	deferredActions := OrderedCollection new.
	
	workerPool := TKTWorkerPool new
		poolMaxSize: 5;
		start.