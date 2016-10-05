tests
testCommandLineIsSuccessIfGivenAllArguments

	| commandLine |
	commandLine := MTCommandLineHandler new.
	commandLine commandLine: (CommandLineArguments withArguments: {
		MTMultiTestCaseForTest name asString.
		'testSuccess'.
		'slave' }).

	commandLine runTest