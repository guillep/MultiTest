tests
testStartedSlaveIsRunning

	| slave |
	slave := MTTestSlaveRef id: #slave forTestCase: (MTMultiTestCaseForTest selector: #testVeryLong).
	slave run.
	
	"Give the time to the slave process to start"
	50 milliSeconds wait.
	self assert: slave isRunning