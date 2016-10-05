test-barriers
testMasterWaitsUntilSlaveIsFinished
	
	self with: #waiting do: [
		self announce: #asserted ].
	
	self localDo: [
		self waitFor: #asserted.
	]
	