tests
testSeveralSpawnImagesDoNotSeeEachOther
	| test |
	
	self with: #one do: [ test := 1 ].
	self with: #two do: [ 
		0.5 seconds wait.
		self assert: test isNil ]