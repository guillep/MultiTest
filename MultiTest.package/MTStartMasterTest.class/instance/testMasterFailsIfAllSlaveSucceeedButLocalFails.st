tests
testMasterFailsIfAllSlaveSucceeedButLocalFails
	<expectedFailure>
	
	| masterTestCase |
	masterTestCase := MTMultiTestCaseForTest forMaster: #testSuccess.
	masterTestCase localDo: [ self fail ].
	masterTestCase currentNode addSlaveAtId: #slave.

	masterTestCase currentNode start