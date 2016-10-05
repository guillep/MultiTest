tests
testTestCaseRunsActionsCorrespondingToItsRole

	| run slaveTestCase |
	run := false.
	slaveTestCase := MTMultiTestCase forSlave: #slave selector: #testSelector.
	slaveTestCase with: #slave do: [ run := true ].
	self assert: run