tests
testKilledSlaveIsNotRunning

	| slave |
	slave := MTTestSlaveRef id: #slave forTestCase: (MTMultiTestCaseForTest selector: #testLong).
	slave run.
	slave kill.
	100 milliSeconds wait.
	self deny: slave isRunning