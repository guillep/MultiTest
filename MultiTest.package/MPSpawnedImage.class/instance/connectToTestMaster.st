accessing
connectToTestMaster

	| newRole slaveNetwork |
	3 second wait.
	newRole := MPTestSlave withId: id.
	slaveNetwork := SeamlessNetwork new.
	FileStream stdout nextPutAll: 'connecting'.
	newRole testMaster: ((slaveNetwork environmentAt: (TCPAddress localAt: testMaster defaultPort)) at: #CurrentTestMaster).
	FileStream stdout nextPutAll: 'connected'.
	testMaster testCase role: newRole.
	newRole register.
	^ newRole