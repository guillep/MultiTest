tests
runInSlaveTest: aTestSelector

	| slave runFuture |
	slave := MTTestSlaveRef id: #slave forTestCase: (MTMultiTestCaseForTest selector: aTestSelector).
	runFuture := slave run.
	
	runFuture waitForCompletion: 3 seconds.
	^ runFuture