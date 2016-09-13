as yet unclassified
performTest

	[super performTest] ensure: [ 
		((currentNode startIn: self) collect: [ :v |
			currentNode assertSlavesFinishedSuccessfully ])
				waitForCompletion: 2 minutes. ]