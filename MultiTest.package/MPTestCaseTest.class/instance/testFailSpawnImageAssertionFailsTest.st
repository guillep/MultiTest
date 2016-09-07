tests
testFailSpawnImageAssertionFailsTest
	<expectedFailure>
	
	self with: #spawn do: [ self assert: false ]