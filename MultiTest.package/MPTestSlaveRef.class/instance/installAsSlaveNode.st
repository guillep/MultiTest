forking
installAsSlaveNode

	| node |
	TranscriptLogger runDuring: [
		[
		node := MPTestSlaveNode new.
		node id: id.
		node testMaster: testMaster.
		node testMasterPort: testMaster testMasterPort.
		node deferredActions: deferredActions.
		testMaster testCase currentNode: node.
		node start.] on: Error do: [ :error | StringSignal emit: error asString ].
		StringSignal emit: ('[MultiTest] Slave node {id} execution skipped. Should not happen' format: { 'id' -> id printString } asDictionary). ]