tests - new
testNewMultiTestCaseHasNoSlaves

	| testCase |
	testCase := MPMultiTestCase new.
	self assert: testCase currentNode slaves isEmpty