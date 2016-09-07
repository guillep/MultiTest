spawning
spawnImageWithId: anId doing: aBlockClosure 
	
	| directory imageLocation isNewImage vmDirectory |
	directory := FileLocator workingDirectory / 'multipharo' / UUID new asString.
	directory ensureCreateDirectory.
	(directory / 'vm') ensureCreateDirectory.
	
	imageLocation := directory / 'spawned_image'.
	vmDirectory := directory / 'vm'.
	
	FileLocator vmDirectory resolve asAbsolute copyAllTo: vmDirectory resolve asAbsolute.
	OSSUnixSubprocess new
		command: 'chmod';
		arguments: { '+x' . (vmDirectory / 'pharo') fullNameWithIndicator };
		redirectStdout;
		runAndWaitPollingEvery: 50 milliSeconds doing: [  ] onExitDo: [].
	
	server stop.

	isNewImage := Smalltalk backupTo: imageLocation fullName.	
	isNewImage
		ifTrue: [ | newRole slaveNetwork |			 
			newRole := MPTestSlave withId: anId.
			slaveNetwork := SeamlessNetwork new.
			newRole testMaster: ((slaveNetwork environmentAt: (TCPAddress localAt: testCase defaultPort)) at: #CurrentTestMaster).
			testCase role: newRole.
			newRole register.
			^ testCase with: anId do: aBlockClosure ].
	
	server start.
	
	^ MPSpawnedImage new
		location: imageLocation , 'image';
		vmLocation: vmDirectory / 'pharo';
		start;
		yourself