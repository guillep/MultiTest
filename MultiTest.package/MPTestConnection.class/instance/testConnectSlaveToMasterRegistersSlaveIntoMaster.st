as yet unclassified
testConnectSlaveToMasterRegistersSlaveIntoMaster

	slave := MPTestSlaveNode new.
	slave id: #slave.
	slave testMasterPort: 59260.
	slave start.
	
	master := MPTestMasterNode new.
	master testMasterPort: 59260.
	master start.
	
	1 second wait.
	
	self assert: master slaves size equals: 1.
	"self assert: master slaves anyOne id equals: #slave."