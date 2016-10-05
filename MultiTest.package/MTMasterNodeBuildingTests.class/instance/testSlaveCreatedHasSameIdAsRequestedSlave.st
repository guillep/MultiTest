as yet unclassified
testSlaveCreatedHasSameIdAsRequestedSlave

	| id |
	id := #slave.
	masterTestCase with: id do: [ "Something" ].
	
	self assert: masterTestCase currentNode slaves anyOne id equals: #slave