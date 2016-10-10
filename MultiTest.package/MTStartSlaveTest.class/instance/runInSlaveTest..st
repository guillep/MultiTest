tests
runInSlaveTest: aTestSelector

	| slave runFuture |
	slave := MTTestSlaveRef id: #slave forTestCase: (MTMultiTestCaseForTest selector: aTestSelector).
	runFuture := slave run.
	
	runFuture synchronizeTimeout: 5 seconds.
	^ runFuture