malvina integration
remoteTestMaster

	| masterNode |
	masterNode := malvinaNode masterRefs anyOne.
	^ masterNode evaluate: [ Smalltalk at: #CurrentTestMaster ]