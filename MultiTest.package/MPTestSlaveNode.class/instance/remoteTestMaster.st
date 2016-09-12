malvina integration
remoteTestMaster

	| masterRemoteRef |
	masterRemoteRef := malvinaNode masterRefs anyOne.
	^ masterRemoteRef sendRequest: (MVGetSharedObject new key: #master)