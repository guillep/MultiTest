as yet unclassified
runCase: aTestCase
	[
	aTestCase announce: TestCaseStarted withResult: self.
	aTestCase runCase.
	aTestCase announce: TestCaseEnded  withResult: self.
	self addPass: aTestCase]
		on: self class failure , self class skip, self class warning, self class error
		do: [:ex | aTestCase handleError: ex withResult: self ]