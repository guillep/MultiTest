tests - barriers
testBarrierEventFromSlaveArrivesToOtherSlave
	
	| testCase executionF |
	testCase := MPMultiTestCase new.
	master := MPTestMasterNode new.
	master testCase: testCase.
	testCase currentNode: master.
	master testMasterPort: 59260.
	master with: #slave do: [ testCase announce: #something ].
	master with: #otherSlave do: [ 
		testCase waitFor: #something.
		testCase announce: #unblocked ].

	executionF := master startIn: testCase.
	2 second wait.
	
	self assert: (master barrierAt: #unblocked) isSignaled