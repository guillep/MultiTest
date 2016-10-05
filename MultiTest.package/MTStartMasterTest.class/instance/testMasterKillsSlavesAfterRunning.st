tests
testMasterKillsSlavesAfterRunning

	| masterTestCase |
	masterTestCase := MTMultiTestCaseForTest forMaster: #testSlaveSuccessLong.
	masterTestCase configure.
	"Force timeout by setting a very low one"
	masterTestCase slaveTimeout: 1 milliSecond.
	
	[ masterTestCase currentNode start ]
		on: TKTTimeoutException do: [ "Ignore timeout" ].

	"Wait for slaves to finish"
	100 milliSeconds wait.
	masterTestCase currentNode slaves do: [ :each |
		self deny: each isRunning ].