activation
activate
	
	| result |
	result := self runTest.
	result hasFailuresOrErrors
		ifTrue: [ 
			self log: 'Error: ', result asString.
			self exitFailure: result asString ]
		ifFalse: [ 
			self log: 'Success'.
			self exitSuccess ].