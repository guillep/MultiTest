test-basic
testCurrentTestMasterIsSelf
	
	self localDo: [
		self assert: (Smalltalk at: #CurrentTestMaster) == self ].