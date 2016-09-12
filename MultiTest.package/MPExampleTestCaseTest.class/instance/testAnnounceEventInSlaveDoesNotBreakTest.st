test-barriers
testAnnounceEventInSlaveDoesNotBreakTest
	
	self with: #waiting do: [
		self announce: #asserted ]