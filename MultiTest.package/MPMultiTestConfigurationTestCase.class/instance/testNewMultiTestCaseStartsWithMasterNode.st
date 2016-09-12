tests - new
testNewMultiTestCaseStartsWithMasterNode

	| testCase |
	testCase := MPMultiTestCase new.
	self assert: testCase currentNode isMasterNode