test-barriers
testAnnounceEventInSlaveSignalsOtherSlavesBarrier
	
	self with: #announcing do: [
		self announce: #asserted ].
	
	self with: #waiting do: [
		3 second wait.
		self assert: (self barrierAt: #asserted) isSignaled ]