as yet unclassified
remoteTestSlave

	^ peer createSyncRequestContext sendRequest: (MVGetSharedObject new key: #slave)