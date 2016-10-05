forking
spawn

	StringSignal emit: ('[MultiTest] Starting slave: {test}' format: { 'test' -> id asString } asDictionary). 
	process := OSSUnixSubprocess new
		command: self vmBinaryLocation fullNameWithIndicator;
		arguments: { '--nodisplay' . (self imageLocation , 'image') fullNameWithIndicator . 'multitest' };
		run.