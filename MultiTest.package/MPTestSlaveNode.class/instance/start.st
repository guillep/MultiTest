forking
start

	| isForked |
	isForked := self forkImage.
	isForked ifTrue: [
		self startMalvinaNode.
		[ [ deferredActions do: #value ]
			on: Error
			do: [ :anException | 
				self announceTestException: anException ]
		] ensure: [ 
			self announceTestFinished.
			testMaster testCase waitFor: #_youCanDie_now.
			Smalltalk exitSuccess ]
	].
	^ isForked