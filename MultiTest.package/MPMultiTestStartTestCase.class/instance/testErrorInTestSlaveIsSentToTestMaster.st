tests - errors
testErrorInTestSlaveIsSentToTestMaster
	
	| executionF |
	master := MPTestMasterNode new.
	master testMasterPort: 59260.
	
	master with: #slave do: [ self error ].
	
	executionF := master startIn: MPMultiTestCase new.
	executionF waitForCompletion: 2 second.
	
	self assert: master slaves anyOne errors notEmpty