test-basic
testSlaveHasSlaveRole
	
	self with: #waiting do: [
		self assert: role isTestSlave ].	