running
run
	
	self isDeployed ifFalse: [ self deploy ].
	^ self spawn