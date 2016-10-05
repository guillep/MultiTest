tests-running
testExpectedFailureRunIsSuccess

	| runFuture |
	runFuture := self runInSlaveTest: #testExpectedFailure.
	self assert: runFuture isSuccess.