forking
finishFuture

	^ commandRunner future: [ process waitForExitPolling ].