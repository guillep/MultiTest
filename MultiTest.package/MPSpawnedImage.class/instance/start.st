accessing
start

	| isForked |
	isForked := self forkImage.
	isForked ifTrue: [
		[ | slave |
		[ slave :=self connectToTestMaster.
		deferredActions do: #value ] on: Error do: [ :anException |
			FileStream stdout nextPutAll: anException signalerContext stack asString. 
			testMaster ifNotNil: [testMaster handleSlaveError: anException fromSlave: slave] ]
		] ensure: [ 
			 testMaster testCase debugging
				ifTrue: [ self halt ]
				ifFalse: [ Smalltalk quitPrimitive ] ]
	]