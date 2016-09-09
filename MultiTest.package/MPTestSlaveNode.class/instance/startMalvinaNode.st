malvina integration
startMalvinaNode

	malvinaNode := MVNode new.
	malvinaNode addMasterAddress: (TCPAddress localAt: self testMasterPort).
	malvinaNode start.
	
	remoteMessagesWorker start.