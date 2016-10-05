deployment
recreateUIProcess
	
	"If we are starting a new image from a test, we will create a new UI process and clean the stack.
	Otherwise, the spawned image will continue running the test from the point where it was cloned.
	
	This consists in: creating a new UIThread if this was the UIThread.
	And suspend the active process to avoid executing what came next"
	UIManager default spawnNewProcessIfThisIsUI: Processor activeProcess.
	Processor activeProcess terminate.