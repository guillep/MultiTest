instance creation
forMaster: aTestSelector
	
	^ (self selector: aTestSelector)
		beMasterNode;
		yourself