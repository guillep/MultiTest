tests - barriers
testBarrierEventFromMasterArrivesToSlave
	
	| executionF |
	master localDo: [ testCase announce: #something. ].
	master with: #slave do: [ 
		testCase waitFor: #something.
		testCase announce: #unblocked ].

	executionF := master start.
	2 second wait.
	
	self assert: (master barrierAt: #unblocked) isSignaled