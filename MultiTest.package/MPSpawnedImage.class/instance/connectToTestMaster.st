accessing
connectToTestMaster

	| newRole slaveNetwork |
	newRole := MPTestSlave withId: id.
	slaveNetwork := SeamlessNetwork new.
	newRole testMaster: ((slaveNetwork environmentAt: (TCPAddress localAt: testMaster defaultPort)) at: #CurrentTestMaster).
	testMaster testCase role: newRole.
	newRole register.