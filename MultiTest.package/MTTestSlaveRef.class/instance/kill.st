running
kill
	
	scheduledTasks do: [ :taskExecution | 
		[taskExecution cancelWithReason: 'Test killed'] ifError: [ "We do not care" ] ].
	self isRunning ifTrue: [ process kill ]