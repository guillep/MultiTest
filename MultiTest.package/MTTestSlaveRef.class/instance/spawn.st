running
spawn

	| taskExecution |
	process := OSSUnixSubprocess new
		command: self vmBinaryLocation fullNameWithIndicator;
		arguments: { 
			'--nodisplay'. 
			self imageLocation fullNameWithIndicator. 
			'multitest'.
			self testCaseName asString.
			self testCaseSelector asString.
			id asString }.
		
	taskExecution := [ | result | 
		process
			runAndWaitPollingEvery: 50 milliSeconds
			retrievingStreams: true
			onExitDo: [ :command :outString :errString | 
				result := command isSuccess
					ifTrue: [ outString ]
					ifFalse: [ self error: (errString ifEmpty: outString) ] ].
		result ] asTask futureTaskExecutionFor: runner.
	
	runner scheduleTaskExecution: taskExecution.
	scheduledTasks add: taskExecution.
	^ taskExecution future.