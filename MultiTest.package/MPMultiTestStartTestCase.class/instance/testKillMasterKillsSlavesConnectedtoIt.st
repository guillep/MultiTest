tests - start/stop
testKillMasterKillsSlavesConnectedtoIt
	
	master := MPTestMasterNode new.
	master addSlaveAtId: #slave.
	master testMasterPort: 59260.
	master startIn: MPMultiTestCase new.
	
	1 second wait.
	master kill.
	1 second wait.
	
	self deny: master slaves anyOne isRunning