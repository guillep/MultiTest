forking
forkAndStartIn: aTestCase

	| isForkedF callerProcess |
	callerProcess := Processor activeProcess.
	
	isForkedF := self forkImage.
	isForkedF onSuccessDo: [ :isForked |
		isForked ifTrue: [ | node |
			TranscriptLogger runDuring: [
				callerProcess terminate.
				node := MPTestSlaveNode new
					id: id;
					testMaster: testMaster;
					testMasterPort: testMaster testMasterPort;
					deferredActions: deferredActions.
				aTestCase currentNode: node.
				node start.
		] ] ].

	isForkedF waitForCompletion: 2 second.
	^ isForkedF	