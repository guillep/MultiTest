tests - barriers
testBarrierEventFromSlaveArrivesToMaster
	
	| testCase |
	testCase := MPMultiTestCase new.
	master := MPTestMasterNode new.
	master testCase: testCase.
	testCase currentNode: master.
	master testMasterPort: 59260.
	master with: #slave do: [ testCase announce: #something ].
	
	master startIn: testCase.
	2 second wait.
	
	self assert: (master barrierAt: #something) isSignaled