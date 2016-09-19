tests - start/stop
testConnectSlaveToMasterRegistersSlaveIntoMaster
	
	| executionF |
	master := MPTestMasterNode new.
	master addSlaveAtId: #slave.
	master testMasterPort: 59260.
	
	executionF := master startIn: MPMultiTestCase new.
	
	2 second wait.
	
	self assert: master slaves anyOne isConnected