as yet unclassified
testSchedulingSeveralTasksForSameSlaveCreatesOnlyOneSlave

	masterTestCase with: #slave1 do: [ "Something" ].
	masterTestCase with: #slave1 do: [ "Something" ].
	masterTestCase with: #slave1 do: [ "Something" ].
	self assert: masterTestCase currentNode slaves size equals: 1.