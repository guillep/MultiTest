initialization
initialize
	super initialize.
	runner := TKTNewProcessTaskRunner new.
	location := FileLocator workingDirectory / 'multitest' / UUID new asString.