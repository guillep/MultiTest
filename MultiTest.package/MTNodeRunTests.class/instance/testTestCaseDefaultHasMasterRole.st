tests
testTestCaseDefaultHasMasterRole

	| slaveTestCase |
	slaveTestCase := MTMultiTestCase selector: #testSelector.
	self assert: slaveTestCase currentNode isMasterNode