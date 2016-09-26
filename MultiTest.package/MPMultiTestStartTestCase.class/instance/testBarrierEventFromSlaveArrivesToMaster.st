tests - barriers
testBarrierEventFromSlaveArrivesToMaster
	
	| executionF |
	master with: #slave do: [ testCase announce: #something ].

	executionF := master start.
	2 second wait.
	
	self assert: (master barrierAt: #something) isSignaled