tests - barriers
testBarrierEventFromMasterArrivesToSlave
	
	| testCase |
	testCase := MPMultiTestCase new.
	master := MPTestMasterNode new.
	master testCase: testCase.
	testCase currentNode: master.
	
	master keepSlavesAlive.
	master addSlaveAtId: #slave.
	master testMasterPort: 59260.
	master localDo: [ testCase announce: #something. ].
	
	master startIn: testCase.
	2 second wait.
	
	self assert: ((master slaveAtId: #slave) barrierAt: #something) isSignaled