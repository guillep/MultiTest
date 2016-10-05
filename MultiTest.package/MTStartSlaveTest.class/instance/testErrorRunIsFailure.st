tests-running
testErrorRunIsFailure

	| runFuture |
	runFuture := self runInSlaveTest: #testError.
	self assert: runFuture isFailure.