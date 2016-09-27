test-basic
testMasterHasMasterRole
	
	self localDo: [
		self assert: currentNode isMasterNode ].