tests
testAllOfManySlavesErrors
	<expectedFailure>
	
	self with: #slave1 do: [ self error ].
	self with: #slave2 do: [ self error ].
	self with: #slave3 do: [ self error ].
	self with: #slave4 do: [ self error ].