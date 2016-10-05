activation
runWith: aBlock
	
	| testClass testSlaveId testCase testSelector |
	"Order of expected arguments:
		multitest TestClass testSelector slaveId"
	commandLine arguments size < 3
		ifTrue: [ 
			self error: 'Unsufficient arguments. Expected: multitest TestClass testSelector slaveId' ].
	
	testClass := Smalltalk globals at: commandLine arguments first asSymbol.
	testSelector := commandLine arguments second asSymbol.
	testSlaveId := commandLine arguments third asSymbol.
	
	testCase := testClass forSlave: testSlaveId selector: testSelector.
	^ aBlock value: testCase value: testClass name value: testSelector value: testSlaveId.