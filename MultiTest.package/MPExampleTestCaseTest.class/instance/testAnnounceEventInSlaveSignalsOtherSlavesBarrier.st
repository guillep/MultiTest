test-barriers
testAnnounceEventInSlaveSignalsOtherSlavesBarrier
	
	self with: #announcing do: [
		self waitFor: #sync.
		self announce: #asserted ].
	
	self with: #waiting do: [
		self waitFor: #sync.
		1 second wait.
		self assert: (self barrierAt: #asserted) isSignaled ].
	
	self localDo: [ 2 seconds wait.
		self announce: #sync. ]