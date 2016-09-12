test-barriers
testSlaveAnnounceSignalesSlaveBarrier
	
	self with: #waiting do: [
		self announce: #asserted.
		self assert: (self barrierAt: #asserted) isSignaled ]