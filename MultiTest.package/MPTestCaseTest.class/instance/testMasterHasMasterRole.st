test-basic
testMasterHasMasterRole
	
	self localDo: [
		self assert: role isTestMaster ].