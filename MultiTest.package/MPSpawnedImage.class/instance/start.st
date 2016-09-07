accessing
start

	| isForked |
	isForked := self forkImage.
	isForked ifTrue: [
		self connectToTestMaster.
		deferredActions do: #value.
		Smalltalk quitPrimitive.
	]