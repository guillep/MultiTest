tests - withdo
testWithDoCreatesSlaveRef

	| testCase |
	testCase := MTMultiTestCase new.
	testCase with: #name do: nil.
	
	self assert: testCase currentNode slaves size equals: 1.
	self assert: testCase currentNode slaves anyOne id equals: #name