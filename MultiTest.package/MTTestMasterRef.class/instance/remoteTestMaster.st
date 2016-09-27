as yet unclassified
remoteTestMaster

	| response |
	[response := masterRemoteRef sendRequest: (MVGetSharedObject new key: #master).
	StringSignal emit: ('[MultiTest] Got shared object from master: {key}'
		format: { 'key' -> response asString } asDictionary).] ifError: [ :err |
		StringSignal emit: ('[MultiTest] Error while getting shared object from master: {key}'
		format: { 'key' -> err asString } asDictionary). 
		 ].
	^ response