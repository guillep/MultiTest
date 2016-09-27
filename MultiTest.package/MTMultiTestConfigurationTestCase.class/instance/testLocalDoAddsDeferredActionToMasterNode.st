tests - localdo
testLocalDoAddsDeferredActionToMasterNode

	| testCase action |
	testCase := MTMultiTestCase new.
	action := Object new.
	
	testCase localDo: action.
	
	self assert: testCase currentNode deferredActions first equals: action.