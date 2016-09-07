tests
testWaitUntilNodeIsFinished
	
	self with: #waiting do: [
		self announce: #asserted ].
	
	self halt.
	self waitFor: #asserted.