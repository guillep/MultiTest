as yet unclassified
testSchedulingATaskForASlaveNodeCreatesASlaveNode

	masterTestCase with: #slave do: [ "Something" ].
	self assert: masterTestCase currentNode slaves size equals: 1.