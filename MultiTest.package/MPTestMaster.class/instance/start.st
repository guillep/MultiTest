as yet unclassified
start

	server := SeamlessNetwork new startServerOn: testCase defaultPort.
	Smalltalk at: #CurrentTestMaster put: self.