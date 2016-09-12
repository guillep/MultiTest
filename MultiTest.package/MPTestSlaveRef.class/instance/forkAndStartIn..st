forking
forkAndStartIn: aTestCase

	| isForked |
	isForked := self forkImage.
	isForked ifTrue: [ | node |
		node := MPTestSlaveNode new
			id: id;
			testMaster: testMaster;
			testMasterPort: testMaster testMasterPort;
			deferredActions: deferredActions.
		aTestCase currentNode: node.
		node start.
	].
	^ isForked