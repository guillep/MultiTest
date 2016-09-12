forking
start

	self startMalvinaNode.
	[ [ deferredActions do: #value ]
		on: Error
		do: [ :anException | self announceTestException: anException ]
	] ensure: [ 
		(self announceTestFinished)
			onSuccessDo: [ :v | 
				testMaster shouldKeepSlavesAlive
					ifTrue: [ self halt ]
					ifFalse: [Smalltalk exitSuccess ] ] ]