forking
cloneVM

	self location ensureCreateDirectory.
	self vmLocation ensureCreateDirectory.
	
	FileLocator vmDirectory resolve asAbsolute copyAllTo: self vmLocation resolve asAbsolute.
	
	OSSUnixSubprocess new
		command: 'chmod';
		arguments: { '+x' . self vmBinaryLocation fullNameWithIndicator };
		redirectStdout;
		runAndWaitPollingEvery: 50 milliSeconds doing: [  ] onExitDo: []