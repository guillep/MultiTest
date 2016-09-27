test-actions
allOutMessagesAreSentFuture

	TKTCurrentTaskRunner
		value: testMaster workerPool
		during: [ ^ (TKTFuture fromCollectionOfFutures: outMessages) ]