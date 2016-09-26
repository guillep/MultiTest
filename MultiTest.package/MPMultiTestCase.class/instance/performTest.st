as yet unclassified
performTest

	[super performTest] ensure: [ | future |
		TranscriptLogger runDuring: [
			future := currentNode start.
			future waitForCompletion: 2 minutes.
			self deny: future isFailure.
			currentNode assertSlavesFinishedSuccessfully ] ]