tests
testCommandLineFailsIfNoArgumentsGiven

	| commandLine |
	commandLine := MTCommandLineHandler new.
	commandLine commandLine: (CommandLineArguments withArguments: { }).

	self should: [ commandLine runTest ] raise: Error.