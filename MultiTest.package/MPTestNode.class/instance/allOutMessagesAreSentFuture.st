as yet unclassified
allOutMessagesAreSentFuture

	TKTCurrentTaskRunner
		value: workerPool
		during: [ ^ (TKTFuture fromCollectionOfFutures: outMessages) ]