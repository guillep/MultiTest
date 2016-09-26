tests - barriers
testBarrierEventFromSlaveArrivesToOtherSlave
	
	| executionF |
	master with: #slave do: [ testCase announce: #something ].
	master with: #otherSlave do: [ 
		testCase waitFor: #something.
		testCase announce: #unblocked ].

	executionF := master start.
	2 second wait.
	
	self assert: (master barrierAt: #unblocked) isSignaled