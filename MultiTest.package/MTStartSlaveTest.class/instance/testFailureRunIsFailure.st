tests-running
testFailureRunIsFailure

	| runFuture |
	runFuture := self runInSlaveTest: #testFailure.
	self assert: runFuture isFailure.