as yet unclassified
testSchedulingSeveralSlavesCreatesSeveralSlaves

	masterTestCase with: #slave1 do: [ "Something" ].
	masterTestCase with: #slave2 do: [ "Something" ].
	masterTestCase with: #slave3 do: [ "Something" ].
	self assert: masterTestCase currentNode slaves size equals: 3.