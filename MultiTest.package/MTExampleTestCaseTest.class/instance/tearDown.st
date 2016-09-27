test-barriers
tearDown

	super tearDown.
	(FileSystem workingDirectory / 'file')
		ensureDelete