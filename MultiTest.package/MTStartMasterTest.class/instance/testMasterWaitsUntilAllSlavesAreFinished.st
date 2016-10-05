tests
testMasterWaitsUntilAllSlavesAreFinished

	| masterTestCase |
	masterTestCase := MTMultiTestCaseForTest forMaster: #testSlaveSuccessLong.
	masterTestCase configure.
	
	masterTestCase currentNode start.

	masterTestCase currentNode slaves do: [ :each |
		self deny: each isRunning ].