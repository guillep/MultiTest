forking
forkAndStartIn: aTestCase

	| callerProcess nodeStartedF |
	callerProcess := Processor activeProcess.

	nodeStartedF := self forkImage collect: [ :isForked |
		isForked ifTrue: [ | node |
			TranscriptLogger runDuring: [
				callerProcess terminate.
				node := MTTestSlaveNode new
					id: id;
					testMaster: testMaster;
					testMasterPort: testMaster testMasterPort;
					deferredActions: deferredActions.
				aTestCase currentNode: node.
				node start.
		] ].
		isForked ].

	nodeStartedF waitForCompletion: 2 second.
	^ nodeStartedF	