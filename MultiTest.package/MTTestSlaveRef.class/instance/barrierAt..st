accessing
barrierAt: aString 
	
	^ (self remoteTestSlave barrierAt: aString) asLocalObject