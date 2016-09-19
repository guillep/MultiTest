tests - barriers
testBarrierEventFromSlaveArrivesToMaster
	
	| testCase executionF |
	testCase := MPMultiTestCase new.
	master := MPTestMasterNode new.
	master testCase: testCase.
	testCase currentNode: master.
	master testMasterPort: 59260.
	master with: #slave do: [ testCase announce: #something ].

	executionF := master startIn: testCase.
	2 second wait.
	
	self assert: (master barrierAt: #something) isSignaled