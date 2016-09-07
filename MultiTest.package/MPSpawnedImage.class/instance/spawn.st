accessing
spawn

	process := OSSUnixSubprocess new
		command: vmLocation fullNameWithIndicator;
		arguments: { '--nodisplay' . location fullNameWithIndicator };
		redirectStdout;
		run.