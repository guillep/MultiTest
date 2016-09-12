test-barriers
testAnnounceEventInSlaveSignalsMasterBarrier
	
	self with: #waiting do: [
		self announce: #asserted ].	
	
	self localDo: [ 
		3 second wait.
		self assert: (self barrierAt: #asserted) isSignaled
	]