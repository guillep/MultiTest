malvina integration
startMalvinaNode

	remoteMessagesWorker start.

	malvinaNode := MVNode new.
	malvinaNode addMasterAddress: (TCPAddress localAt: self testMasterPort).
	malvinaNode start.
	
	self scheduleRemote: [ | masterRemoteRef |
		self halt.
		masterRemoteRef := malvinaNode masterRefs anyOne.
		masterRemoteRef sendRequest: (MPRegisterSlaveRequest new id: id)
	].