deployment
cloneVM
	
	FileLocator vmDirectory resolve asAbsolute copyAllTo: self vmLocation resolve asAbsolute.
	
	process := OSSUnixSubprocess new
		command: 'chmod';
		arguments: { '+x' . self vmBinaryLocation fullNameWithIndicator };
		redirectStdout;
		runAndWaitPollingEvery: 50 milliSeconds doing: [  ] onExitDo: [].
	
	process isSuccess ifFalse: [ self error: 'Could not make VM executable' ].