tests - withdo
testWithDoAddsDeferredActionInOrder

	| testCase action |
	testCase := MPMultiTestCase new.
	action := Object new.
	
	1 to: 100 do: [ :i | testCase with: #name do: i ].
	
	(testCase currentNode slaveAtId: #name) deferredActions
		inject: 0 into: [ :acum :each | self assert: acum < each. each ]