test-barriers
testMasterAnnounceSignalsMasterBarrier
	
	self localDo: [
		self announce: #asserted.
		self assert: (self barrierAt: #asserted) isSignaled ]