tests
testOneOfManySlaveErrors
	<expectedFailure>

	self with: #slave do: [ self error: 'test' ].
	self with: #slave2 do: [  ].
	self with: #slave3 do: [  ].
	self with: #slave4 do: [  ].