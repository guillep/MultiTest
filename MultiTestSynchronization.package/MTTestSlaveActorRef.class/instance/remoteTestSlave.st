as yet unclassified
remoteTestSlave

	| slave |
	[
	slave := peer createSyncRequestContext sendRequest: (MVGetSharedObject new key: #slave).
	StringSignal emit: ('[MultiTest] Got slave: {key}'
		format: { 'key' -> slave asString } asDictionary).] on: Error do: [ :err |
		StringSignal emit: ('[MultiTest] Error while getting shared object from slave: {key}'
		format: { 'key' -> err asString } asDictionary). 
		err pass.
		 ].
	^ slave