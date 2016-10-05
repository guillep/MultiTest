tests
testSlaveErrors
	<expectedFailure>

	self with: #slave do: [ self error: 'test' ]