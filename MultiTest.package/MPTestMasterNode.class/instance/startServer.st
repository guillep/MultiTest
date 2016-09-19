start-stop
startServer

	outboxWorker start.

	network := MVNetwork new.
	network sharedObjectAt: #master put: self.
	server := network startServerOn: testMasterPort.