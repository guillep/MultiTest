tests - withdo
testWithDoAddsDeferredActionToSlaveRef

	| testCase action slave |
	testCase := MTMultiTestCase new.
	action := Object new.
	
	slave := testCase with: #name do: action.
	
	self assert: slave deferredActions first equals: action.