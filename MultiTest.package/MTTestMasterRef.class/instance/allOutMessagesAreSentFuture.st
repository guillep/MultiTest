as yet unclassified
allOutMessagesAreSentFuture

	TKTCurrentTaskRunner
		value: slaveNode workerPool
		during: [ ^ (TKTFuture fromCollectionOfFutures: outMessages) ]