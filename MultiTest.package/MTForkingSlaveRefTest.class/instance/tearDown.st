running
tearDown

	node ifNotNil: [ 
		node isRunning ifTrue: [node kill] ]