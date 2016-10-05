accessing
slaveTimeout
	
	^ slaveTimeout ifNil: [ self defaultSlaveTimeout ]