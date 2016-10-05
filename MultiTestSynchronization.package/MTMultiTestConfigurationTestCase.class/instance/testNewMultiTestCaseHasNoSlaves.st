tests - new
testNewMultiTestCaseHasNoSlaves

	| testCase |
	testCase := MTMultiTestCase new.
	self assert: testCase currentNode slaves isEmpty