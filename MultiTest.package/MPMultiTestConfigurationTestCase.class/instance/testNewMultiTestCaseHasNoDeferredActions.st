tests - new
testNewMultiTestCaseHasNoDeferredActions

	| testCase |
	testCase := MPMultiTestCase new.
	self assert: testCase currentNode deferredActions isEmpty