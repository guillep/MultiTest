as yet unclassified
start

	network := MVNetwork new.
	network sharedObjectAt: #master put: self.
	server := network startServerOn: testCase defaultPort.