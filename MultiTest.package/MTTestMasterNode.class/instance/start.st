running
start
	
	| slavesFuture |
	slavesFuture := self startSlaves.
	[
	self performLocal.
	slavesFuture waitForCompletion: self slaveTimeout.
	testCase assert: slavesFuture isSuccess ]
		ensure: [ slaves do: #kill ]