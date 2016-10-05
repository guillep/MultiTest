tests
testTestCaseForSlaveHasSlaveRole

	| slaveTestCase |
	slaveTestCase := MTMultiTestCase forSlave: #slave selector: #testSelector.
	self assert: slaveTestCase currentNode isSlaveNode