tests
testTestCaseDoesNotRunActionsNotCorrespondingToItsRole

	| run slaveTestCase |
	run := false.
	slaveTestCase := MTMultiTestCase forSlave: #slave selector: #testSelector.
	slaveTestCase with: #otherSlave do: [ run := true ].
	self deny: run