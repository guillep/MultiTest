as yet unclassified
performTest

	[super performTest] ensure: [ 
		[currentNode startIn: self] ensure: [ 
			currentNode assertSlavesFinishedSuccessfully ] ]