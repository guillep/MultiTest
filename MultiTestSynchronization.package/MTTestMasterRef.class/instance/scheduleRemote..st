as yet unclassified
scheduleRemote: aTask

	| message |
	message := ((outboxWorker future: [ ])
		collect: [ :v | aTask value ]
		withRetry: (TKTRetry every: 100 milliSeconds for: 1 seconds)).
	outMessages add: message.
	message onSuccessDo: [ :v | StringSignal emit: 'message sent' ].
	message onFailureDo: [ :v | ExceptionSignal emit: v ].