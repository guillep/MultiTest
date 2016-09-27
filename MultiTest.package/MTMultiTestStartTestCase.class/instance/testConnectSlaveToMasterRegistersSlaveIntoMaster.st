tests - start/stop
testConnectSlaveToMasterRegistersSlaveIntoMaster
	
	| executionF |
	master keepSlavesAlive.
	master addSlaveAtId: #slave.
	executionF := master start.
	
	2 second wait.
	
	self assert: master slaves anyOne isConnected