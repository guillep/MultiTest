as yet unclassified
initialize

	super initialize.
	currentNode := MTTestMasterNode new.
	currentNode testCase: self.
	currentNode testMasterPort: self defaultPort