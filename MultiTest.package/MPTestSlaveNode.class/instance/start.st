forking
start

	| masterRefF slaveRegisteredF actionsExecutedF doneF |
	StringSignal emit: ('[MultiTest] Slave Started: {slave}' format: { 'slave' -> id printString } asDictionary).
	self startMalvinaNode.
	StringSignal emit: ('[MultiTest] Started malvina node').

	StringSignal emit: ('[MultiTest] current task runner: {ref}' format: { 'ref' -> TKTCurrentTaskRunner value printString } asDictionary).
	
	masterRefF := workerPool future: [ | masterRef | 
		StringSignal emit: ('[MultiTest] Getting master ref').
		masterRef := malvinaNode masterRefs anyOne.
		StringSignal emit: ('[MultiTest] Got master ref: {ref}' format: { 'ref' -> masterRef printString } asDictionary).
		masterRef ].
	
	1 second wait.

	StringSignal emit: ('[MultiTest] masterRefF: {ref}' format: { 'ref' -> masterRefF printString } asDictionary).

	masterRefF onFailureDo: [ :f | 
		StringSignal emit: ('[MultiTest] Failure: {f}' format: { 'f' -> f printString } asDictionary). ].
	
	slaveRegisteredF := masterRefF
		collect: [ :masterRef | self registerToMaster: masterRef ]
		withRetry: (TKTRetry every: 100 milliSeconds for: 2 seconds).
	
	slaveRegisteredF onFailureDo: [ :f | 
		StringSignal emit: ('[MultiTest] Failure: {f}' format: { 'f' -> f printString } asDictionary). ].
	
	actionsExecutedF := (deferredActions
		inject: slaveRegisteredF
		into: [ :future :nextAction | future collect: [ :v | 
				StringSignal emit: ('[MultiTest] Execution: {f}' format: { 'f' -> nextAction printString } asDictionary).
				nextAction value ] ])
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