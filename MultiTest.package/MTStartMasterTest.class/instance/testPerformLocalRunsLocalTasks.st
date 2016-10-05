tests
testPerformLocalRunsLocalTasks

	| masterTestCase futures run |
	masterTestCase := MTMultiTestCaseForTest forMaster: #testSlaveSuccessLong.
	masterTestCase currentNode addDeferredAction: [ run := true ].
	futures := masterTestCase currentNode performLocal.

	self assert: run