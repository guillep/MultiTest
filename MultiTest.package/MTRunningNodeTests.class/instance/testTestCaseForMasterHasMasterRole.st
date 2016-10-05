tests
testTestCaseForMasterHasMasterRole

	| slaveTestCase |
	slaveTestCase := MTMultiTestCase forMaster: #testSelector.
	self assert: slaveTestCase currentNode isMasterNode