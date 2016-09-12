as yet unclassified
tearDown

	slave ifNotNil: [ 
		slave isRunning ifTrue: [slave kill] ].
	master ifNotNil: #stop