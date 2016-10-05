as yet unclassified
allOutMessagesAreSentFuture

	TKTCurrentTaskRunner
		value: workerPool
		during: [ ^ (TKTFuture fromCollectionOfFutures: 
			(slaves collect: [ :each | each allOutMessagesAreSentFuture ])) ]