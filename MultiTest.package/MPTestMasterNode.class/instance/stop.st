start-stop
stop
	
	network ifNotNil: #close.
	server ifNotNil: #stop.
	
	network := server := nil.