test-barriers
testWaitForEventBlocksSpawnImageUntilEventIsReceived
	
	| parent |
	parent := FileSystem workingDirectory.

	self with: #waiting do: [
		self waitFor: #fileCreated.
		self assert: (parent / 'file') exists.
		self announce: #asserted ].
	
	self with: #announcing do: [
		0.5 seconds wait. 
		(parent / 'file') writeStream.
		self announce: #fileCreated ].
	
	self localDo: [
		self waitFor: #asserted.
	].