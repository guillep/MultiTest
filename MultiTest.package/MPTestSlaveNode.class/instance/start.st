forking
start

	| masterRefF slaveRegisteredF actionsExecutedF doneF |
	StringSignal emit: ('[MultiTest] Slave Started: {slave}' format: { 'slave' -> id printString } asDictionary).
	self startMalvinaNode.
	
	masterRefF := TKTFuture doing: [ malvinaNode masterRefs anyOne ].
	slaveRegisteredF := masterRefF
		collect: [ :masterRef | self registerToMaster: masterRef ]
		withRetry: (TKTRetry every: 100 milliSeconds for: 2 seconds).
	
	actionsExecutedF := (deferredActions
		inject: slaveRegisteredF
		into: [ :future :nextAction | future collect: [ :v | nextAction value ] ])
			on: Exception do: [ :anException | self announceTestException: anException ].
	
	doneF := (((actionsExecutedF flatCollect: [ :v | 
		StringSignal emit: ('[MultiTest] Slave test run: {slave}' format: { 'slave' -> id printString } asDictionary).
		self allOutMessagesAreSentFuture ])
		firstCompleteOf: [ 1 minute wait. self error: 'Timeout!' ] future)
			collect: [ :value | 
				StringSignal emit: ('[MultiTest] Slave {slave} Finished OK' format: { 'slave' -> id printString } asDictionary).
				testMaster shouldKeepSlavesAlive
									ifTrue: [ self halt ]
									ifFalse: [Smalltalk exitSuccess ] ])
			on: Exception do: [ :error | 
				StringSignal emit: ('[MultiTest] Slave {slave} Finished with Error: {error}'
					format: { 
						'slave' -> id printString.
						'error' -> error asString } asDictionary).
				testMaster shouldKeepSlavesAlive
									ifTrue: [ self halt ]
									ifFalse: [Smalltalk exitFailure ] ].
							
	doneF waitForCompletion: 2 minutes.
	StringSignal emit: ('[MultiTest] Slave Completed: {slave}' format: { 'slave' -> id printString } asDictionary).