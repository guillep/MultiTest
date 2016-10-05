tests
testMasterTestCaseRunsActionsForMaster

	| run slaveTestCase |
	run := false.
	slaveTestCase := MTMultiTestCase forMaster: #testSelector.
	slaveTestCase localDo: [ run := true ].
	self deny: run