as yet unclassified
handleSlaveError: error fromSlave: aSlave

	| localError |
	[ localError := error asLocalObject.
	1 to: localError class instSize do: [ :i |
		localError instVarAt: i put: (localError instVarAt: i) asLocalObject
	].
	(self spawnedImages detect: [ :each | each hasSlaveProxy: aSlave ])
		addError: localError.] fork