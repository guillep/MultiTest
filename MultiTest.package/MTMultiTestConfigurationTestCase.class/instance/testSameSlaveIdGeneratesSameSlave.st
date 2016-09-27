tests - withdo
testSameSlaveIdGeneratesSameSlave

	| testCase slave1 slave2 |
	testCase := MTMultiTestCase new.
	slave1 := testCase with: #name do: 1.
	slave2 := testCase with: #name do: 2.
	
	self assert: slave1 equals: slave2.