malvina integration
startMalvinaNode

	malvinaNode := MVNode new.
	malvinaNode addMasterAddress: (TCPAddress localAt: self testMasterPort).
	malvinaNode sharedObjectAt: #slave put: self.
	malvinaNode start.