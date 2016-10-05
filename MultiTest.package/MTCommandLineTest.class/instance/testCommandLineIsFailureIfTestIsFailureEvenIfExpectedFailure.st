tests
testCommandLineIsFailureIfTestIsFailureEvenIfExpectedFailure

	| commandLine result |
	commandLine := MTCommandLineHandler new.
	commandLine commandLine: (CommandLineArguments withArguments: {
		MTMultiTestCaseForTest name asString.
		'testExpectedFailure'.
		'slave' }).

	result := commandLine runTest.
	self assert: result hasFailuresOrErrors.