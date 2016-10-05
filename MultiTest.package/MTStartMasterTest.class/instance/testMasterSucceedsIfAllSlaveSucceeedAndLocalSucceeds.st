tests
testMasterSucceedsIfAllSlaveSucceeedAndLocalSucceeds

	| masterTestCase |

	masterTestCase := MTMultiTestCaseForTest forMaster: #testSuccess.
	masterTestCase localDo: [ "Success!" 1 + 1 ].
	masterTestCase currentNode addSlaveAtId: #slave.

	masterTestCase currentNode start