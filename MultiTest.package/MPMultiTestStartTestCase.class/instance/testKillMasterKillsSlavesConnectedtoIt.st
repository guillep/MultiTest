tests - start/stop
testKillMasterKillsSlavesConnectedtoIt
	
	| executionF |
	master := MPTestMasterNode new.
	master addSlaveAtId: #slave.
	master testMasterPort: 59260.
	executionF := master startIn: MPMultiTestCase new.
	
	1 second wait.
	master kill.
	1 second wait.
	
	self deny: master slaves anyOne isRunning