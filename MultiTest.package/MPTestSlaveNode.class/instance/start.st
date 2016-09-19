forking
start

	| masterRefF slaveRegisteredF actionsExecutedF |
	self startMalvinaNode.
	
	masterRefF := TKTFuture doing: [ malvinaNode masterRefs anyOne ].
	slaveRegisteredF := masterRefF
		collect: [ :masterRef | masterRef sendRequest: (MPRegisterSlaveRequest new id: id) ]
		withRetry: (TKTRetry every: 100 milliSeconds for: 2 seconds).
	
	actionsExecutedF := (deferredActions
		inject: slaveRegisteredF
		into: [ :future :nextAction | future collect: [ :v | nextAction value ] ])
			on: Exception do: [ :anException | self announceTestException: anException ].
	
	((actionsExecutedF flatCollect: [ :v | self allOutMessagesAreSentFuture ])
		firstCompleteOf: [ 1 minute wait. self error: 'Timeout!' ] future)
		onSuccessDo: [ :value | testMaster shouldKeepSlavesAlive
								ifTrue: [ self halt ]
								ifFalse: [Smalltalk exitSuccess ] ];
		onFailureDo: [ :error | testMaster shouldKeepSlavesAlive
								ifTrue: [ self halt ]
								ifFalse: [Smalltalk exitFailure ] ].
							
	actionsExecutedF waitForCompletion: 2 minutes.