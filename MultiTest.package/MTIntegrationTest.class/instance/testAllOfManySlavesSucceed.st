tests
testAllOfManySlavesSucceed

	self with: #slave1 do: [ self assert: true ].
	self with: #slave2 do: [ self assert: true ].
	self with: #slave3 do: [ self assert: true ].
	self with: #slave4 do: [ self assert: true ].