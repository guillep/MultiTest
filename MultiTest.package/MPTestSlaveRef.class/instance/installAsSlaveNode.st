forking
installAsSlaveNode

	| node |
	TranscriptLogger runDuring: [
		[
		(TKTWorkerPool global freeWorkers isEmpty
			ifFalse: [self error: 'global pool has no free workers']).
		StringSignal emit: ('[MultiTest] Installing slave node {id}' format: { 'id' -> id printString } asDictionary).
		node := MPTestSlaveNode new.
		node id: id.
		StringSignal emit: ('[MultiTest] Set node id {id}' format: { 'id' -> id printString } asDictionary).
		node testMaster: testMaster.
		StringSignal emit: ('[MultiTest] Slave node testmaster {id}' format: { 'id' -> id printString } asDictionary).
		node testMasterPort: testMaster testMasterPort.
		StringSignal emit: ('[MultiTest] Slave node testmaster port {id}' format: { 'id' -> id printString } asDictionary).
		node deferredActions: deferredActions.
		StringSignal emit: ('[MultiTest] Slave node deferred actions {id}' format: { 'id' -> id printString } asDictionary).
		
		StringSignal emit: ('[MultiTest] testmaster {id}' format: { 'id' -> testMaster printString } asDictionary).
		StringSignal emit: ('[MultiTest] testcase {id}' format: { 'id' -> testMaster testCase printString } asDictionary).
		StringSignal emit: ('[MultiTest] node {id}' format: { 'id' -> node printString } asDictionary).
		testMaster testCase currentNode: node.
		StringSignal emit: ('[MultiTest] Slave node installed {id}' format: { 'id' -> id printString } asDictionary).
		node start.] ifError: [ :error | StringSignal emit: error asString ].
		StringSignal emit: ('[MultiTest] Slave node {id} execution skipped. Should not happen' format: { 'id' -> id printString } asDictionary). ]