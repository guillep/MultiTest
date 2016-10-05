tests-running
testLongRunIsSuccess

	| runFuture |
	runFuture := self runInSlaveTest: #testLong.
	self assert: runFuture isSuccess.