tests - new
testNewMultiTestCaseStartsWithMasterNode

	| testCase |
	testCase := MTMultiTestCase new.
	self assert: testCase currentNode isMasterNode