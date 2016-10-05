tests-running
testExpectedFailureRunIsFailure

	| runFuture |
	runFuture := self runInSlaveTest: #testExpectedFailure.
	self assert: runFuture isFailure.