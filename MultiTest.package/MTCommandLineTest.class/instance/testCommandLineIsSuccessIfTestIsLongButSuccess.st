tests
testCommandLineIsSuccessIfTestIsLongButSuccess

	| commandLine result |
	commandLine := MTCommandLineHandler new.
	commandLine commandLine: (CommandLineArguments withArguments: {
		MTMultiTestCaseForTest name asString.
		'testLong'.
		'slave' }).

	result := commandLine runTest.
	self assert: result hasFailuresOrErrors not.