tests - localdo
testLocalDoAddsDeferredActionToMasterNode

	| testCase action |
	testCase := MPMultiTestCase new.
	action := Object new.
	
	testCase localDo: action.
	
	self assert: testCase currentNode deferredActions first equals: action.