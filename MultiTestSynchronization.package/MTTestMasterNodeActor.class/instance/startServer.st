start-stop
startServer

	network := MVNetwork new.
	network sharedObjectAt: #master put: self.
	server := network startServerOn: testMasterPort.