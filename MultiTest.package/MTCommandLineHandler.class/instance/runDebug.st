running
runDebug
	
	^ self runWith: [ :testCase :testClassName :testSelector :testSlaveId | testCase debug ]