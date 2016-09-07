as yet unclassified
initialize

	super initialize.
	self role: (MPTestMaster new testCase: self; start).