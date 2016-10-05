test-barriers
testSlaveWaitsUntilOtherSlaveIsFinished
	
	self with: #announcing do: [
		self announce: #asserted ].
	
	self with: #waiting do: [
		3 seconds wait.
		self waitFor: #asserted.
	]
	