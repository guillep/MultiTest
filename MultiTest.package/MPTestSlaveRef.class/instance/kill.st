forking
kill
	
	(process notNil and: [process isRunning])
		ifTrue: [ process kill ]