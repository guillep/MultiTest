as yet unclassified
tearDown

	node ifNotNil: [ 
		node isRunning ifTrue: [node kill] ]