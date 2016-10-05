tests-running
testSuccessRunIsSuccess

	| runFuture |
	runFuture := self runInSlaveTest: #testSuccess.
	self assert: runFuture isSuccess.