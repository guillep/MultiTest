test-basic
testCurrentTestMasterIsSelf
	
	self localDo: [
		self assert: (currentNode network sharedObjectAt: #master) == currentNode ].