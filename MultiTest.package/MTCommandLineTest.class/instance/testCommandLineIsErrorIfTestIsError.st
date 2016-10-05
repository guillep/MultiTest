tests
testCommandLineIsErrorIfTestIsError

	| commandLine result |
	commandLine := MTCommandLineHandler new.
	commandLine commandLine: (CommandLineArguments withArguments: {
		MTMultiTestCaseForTest name asString.
		'testError'.
		'slave' }).

	result := commandLine runTest.
	self assert: result hasErrors.