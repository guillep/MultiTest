start-stop
stop
	
	super stop.
	
	network ifNotNil: #close.
	server ifNotNil: #stop.
	
	network := server := nil.
	"slaves do: #kill"