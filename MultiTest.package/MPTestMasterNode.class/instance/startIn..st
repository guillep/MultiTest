start-stop
startIn: aTestCase
	
	self slaves do: [ :each | each forkAndStartIn: aTestCase ].
	self startServer.

	self slaves do: [ :each | each waitForPeer ].
	deferredActions do: #value.