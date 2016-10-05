initialization
initialize
	super initialize.
	location := FileLocator workingDirectory / 'multitest' / UUID new asString