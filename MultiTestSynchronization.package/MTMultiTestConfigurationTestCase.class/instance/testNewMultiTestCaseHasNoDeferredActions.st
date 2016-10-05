tests - new
testNewMultiTestCaseHasNoDeferredActions

	| testCase |
	testCase := MTMultiTestCase new.
	self assert: testCase currentNode deferredActions isEmpty