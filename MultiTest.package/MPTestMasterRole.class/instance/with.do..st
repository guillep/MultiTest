as yet unclassified
with: anId do: aBlockClosure 
	
	| slave |
	slave := slaves
		at: anId
		ifAbsentPut: [ 
			MPTestSlaveNode new
				id: anId;
				testMaster: self;
				yourself ].
	slave addDeferredAction: aBlockClosure.