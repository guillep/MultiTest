tests
testCommandLineFailsIfOnlyGivenTestClassNameAndTestSelector

	| commandLine |
	commandLine := MTCommandLineHandler new.
	commandLine commandLine: (CommandLineArguments withArguments: {
		MTMultiTestCaseForTest name asString.
		'testSuccess' }).

	self should: [ commandLine runTest ] raise: Error.