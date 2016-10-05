tests
testKilledSlaveIsNotRunning

	| slave |
	slave := MTTestSlaveRef id: #slave forTestCase: (MTMultiTestCaseForTest selector: #testVeryLong).
	slave run.
	slave stop.
	
	slave waitForCompletion: 500 milliSeconds.
	self deny: slave isRunning