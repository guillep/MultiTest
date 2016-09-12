malvina integration
startMalvinaNode

	remoteMessagesWorker start.

	malvinaNode := MVNode new.
	malvinaNode addMasterAddress: (TCPAddress localAt: self testMasterPort).
	malvinaNode sharedObjectAt: #slave put: self.
	malvinaNode start.
	
	self scheduleRemote: [ | masterRemoteRef |
		masterRemoteRef := malvinaNode masterRefs anyOne.
		masterRemoteRef sendRequest: (MPRegisterSlaveRequest new id: id)
	].