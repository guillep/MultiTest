activation
runTestUsing: aTestRuner
	
	^ self runWith: [ :testCase :testClassName :testSelector :testSlaveId | | testSuite |
		testSuite := TestSuite named: ('[MultiTest-{id}] {class}>>{selector}' format: {
		'id'		-> testSlaveId asString.
		'class'	-> testClassName asString.
		'selector' -> testSelector asString.
	} asDictionary).
	testSuite addTest: testCase.
	
	self log: testSuite name.
	^ aTestRuner runSuite: testSuite ]