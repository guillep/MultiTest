tests
testOneOfManySlaveFails
	<expectedFailure>

	self with: #slave do: [ self fail ].
	self with: #slave2 do: [  ].
	self with: #slave3 do: [  ].
	self with: #slave4 do: [  ].