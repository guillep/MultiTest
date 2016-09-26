tests - start/stop
testKillMasterKillsSlavesConnectedtoIt
	
	| executionF |
	master addSlaveAtId: #slave.
	executionF := master start.
	
	1 second wait.
	master kill.
	2 second wait.
	
	self deny: master slaves anyOne isRunning