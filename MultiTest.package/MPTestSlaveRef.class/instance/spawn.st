forking
spawn

	process := OSSUnixSubprocess new
		command: self vmBinary fullNameWithIndicator;
		arguments: { '--nodisplay' . (self imageLocation , 'image') fullNameWithIndicator . 'multitest' };
		run.