tests
testMasterTestCaseDoesNotRunActionsNotCorrespondingToItsRole

	| run slaveTestCase |
	run := false.
	slaveTestCase := MTMultiTestCase forMaster: #testSelector.
	slaveTestCase with: #otherSlave do: [ run := true ].
	self deny: run