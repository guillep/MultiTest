as yet unclassified
doPerformTest

	[self spawnedImages do: [ :image | image start ].
	server := SeamlessNetwork new startServerOn: testCase defaultPort.
	
	[deferredActions do: #value] ifError: [ "OUCH" ].
	
	self spawnedImages do: [ :image | image wait ]]
		ensure: [
			Smalltalk removeKey: #CurrentTestMaster.
			server stop
			 ].
	testCase assert: (self spawnedImages allSatisfy: #isSuccess).