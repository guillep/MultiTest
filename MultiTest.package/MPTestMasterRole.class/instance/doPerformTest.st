as yet unclassified
doPerformTest

	[
	Smalltalk at: #CurrentTestMaster put: testCase.
	self spawnedImages do: [ :image | image start ].
	server := SeamlessNetwork new startServerOn: testCase defaultPort.
	self spawnedImages do: [ :image | image waitStarted ].
	deferredActions do: #value.
	] ensure: [
		self spawnedImages do: [ :image | image waitFinished ]	.
		Smalltalk removeKey: #CurrentTestMaster.
		server stop.
		self spawnedImages do: [ :each | testCase assert: each isSuccess ].].
	