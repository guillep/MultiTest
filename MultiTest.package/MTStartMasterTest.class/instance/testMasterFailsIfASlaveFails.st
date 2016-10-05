tests
testMasterFailsIfASlaveFails
	<expectedFailure>
	| masterTestCase |
	masterTestCase := MTMultiTestCaseForTest forMaster: #testFail.
	masterTestCase currentNode addSlaveAtId: #slave.
	masterTestCase currentNode start