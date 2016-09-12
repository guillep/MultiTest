start-stop
startServer

	remoteMessagesWorker start.

	network := MVNetwork new.
	network sharedObjectAt: #master put: self.
	server := network startServerOn: testMasterPort.