tests - errors
testErrorInTestSlaveIsSentToTestMaster
	
	| executionF |
	master with: #slave do: [ self error ].
	
	executionF := master start.
	executionF waitForCompletion: 2 second.
	
	self assert: master slaves anyOne errors notEmpty