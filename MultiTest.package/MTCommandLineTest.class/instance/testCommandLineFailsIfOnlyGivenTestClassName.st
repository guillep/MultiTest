tests
testCommandLineFailsIfOnlyGivenTestClassName

	| commandLine |
	commandLine := MTCommandLineHandler new.
	commandLine commandLine: (CommandLineArguments withArguments: {
		MTMultiTestCaseForTest name asString }).

	self should: [ commandLine runTest ] raise: Error.