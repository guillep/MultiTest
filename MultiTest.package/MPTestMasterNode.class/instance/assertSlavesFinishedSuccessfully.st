as yet unclassified
assertSlavesFinishedSuccessfully

	self slaves do: [ :each | each waitFinished ].
	self slaves do: [ :each | self assert: each isSuccess ].