as yet unclassified
assertSlavesFinishedSuccessfully

	self slaves do: [ :each | self assert: each isSuccess ].