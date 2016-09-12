tests - localdo
testLocalDoAddsDeferredActionInOrder

	| testCase action |
	testCase := MPMultiTestCase new.
	action := Object new.
	
	1 to: 100 do: [ :i | testCase localDo: i ].
	
	testCase currentNode deferredActions
		inject: 0 into: [ :acum :each | self assert: acum < each. each ]