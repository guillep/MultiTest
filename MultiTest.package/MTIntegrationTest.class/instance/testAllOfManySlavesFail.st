tests
testAllOfManySlavesFail
	<expectedFailure>
	
	self with: #slave1 do: [ self fail ].
	self with: #slave2 do: [ self fail ].
	self with: #slave3 do: [ self fail ].
	self with: #slave4 do: [ self fail ].