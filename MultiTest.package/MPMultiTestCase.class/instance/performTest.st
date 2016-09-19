as yet unclassified
performTest

	[super performTest] ensure: [ | future |
		TranscriptLogger runDuring: [
			future := currentNode startIn: self.
			future waitForCompletion: 2 minutes. 
			currentNode assertSlavesFinishedSuccessfully ] ]