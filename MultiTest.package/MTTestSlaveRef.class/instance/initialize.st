initialization
initialize
	super initialize.
	runner := TKTNewProcessTaskRunner new.
	runner exceptionHandler: self.
	
	location := FileLocator workingDirectory / 'multitest' / UUID new asString.
	scheduledTasks := Set new.