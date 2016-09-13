forking
forkAndStartIn: aTestCase

	| isForkedF |
	isForkedF := self forkImage.
	^ isForkedF collect: [ :isForked |
		isForked ifTrue: [ | node |
			node := MPTestSlaveNode new
				id: id;
				testMaster: testMaster;
				testMasterPort: testMaster testMasterPort;
				deferredActions: deferredActions.
			aTestCase currentNode: node.
			node start.
		].
		isForked
	].