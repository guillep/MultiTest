accessing
cloneVM

	self location ensureCreateDirectory.
	
	vmLocation := self location / 'vm'.
	vmLocation ensureCreateDirectory.
	
	FileLocator vmDirectory resolve asAbsolute copyAllTo: vmLocation resolve asAbsolute.
	
	OSSUnixSubprocess new
		command: 'chmod';
		arguments: { '+x' . (vmLocation / 'pharo') fullNameWithIndicator };
		redirectStdout;
		runAndWaitPollingEvery: 50 milliSeconds doing: [  ] onExitDo: []