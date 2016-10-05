tests
testPerformLocalRunsLocalTasksInOrder

	| masterTestCase futures result |
	result := OrderedCollection new.
	
	masterTestCase := MTMultiTestCaseForTest forMaster: #testSlaveSuccessLong.
	masterTestCase currentNode addDeferredAction: [ result add: 322 ].
	masterTestCase currentNode addDeferredAction: [ result add: true ].
	masterTestCase currentNode addDeferredAction: [ result add: Color red ].
	
	futures := masterTestCase currentNode performLocal.

	self assert: result first equals: 322.
	self assert: result second equals: true.
	self assert: result third equals: Color red.