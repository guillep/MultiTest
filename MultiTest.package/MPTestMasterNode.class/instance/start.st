start-stop
start
	
	network := MVNetwork new.
	network sharedObjectAt: #master put: self.
	server := network startServerOn: testMasterPort.