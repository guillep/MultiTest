tests - errors
testErrorInTestSlaveIsSentToTestMaster
	
	| executionF |
	master := MPTestMasterNode new.
	master testMasterPort: 59260.
	
	master with: #slave do: [ self error ].
	
	executionF := master startIn: MPMultiTestCase new.
	
	2 second wait.
	
	self assert: master slaves anyOne errors notEmpty