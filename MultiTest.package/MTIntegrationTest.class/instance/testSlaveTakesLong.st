tests
testSlaveTakesLong
	<expectedFailure>
	self slaveTimeout: 1 second.
	self with: #slave do: [ 2 seconds wait. ]