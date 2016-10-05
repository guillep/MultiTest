tests
testCommandLineIsFailureIfTestIsFailure

	| commandLine result |
	commandLine := MTCommandLineHandler new.
	commandLine commandLine: (CommandLineArguments withArguments: {
		MTMultiTestCaseForTest name asString.
		'testFail'.
		'slave' }).

	result := commandLine runTest.
	self assert: result hasFailures.