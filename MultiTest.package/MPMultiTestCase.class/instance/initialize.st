as yet unclassified
initialize

	super initialize.
	currentNode := MPTestMasterNode new.
	currentNode testCase: self.
	currentNode testMasterPort: self defaultPort.
	self role: (MPTestMasterRole new testCase: self).