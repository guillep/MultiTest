tests - errors
testErrorInTestSlaveIsSentToTestMaster
	
	master := MPTestMasterNode new.
	master testMasterPort: 59260.
	
	master with: #slave do: [ self error ].
	
	master startIn: MPMultiTestCase new.
	
	2 second wait.
	
	self assert: master slaves anyOne errors notEmpty