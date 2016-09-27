as yet unclassified
handleSlaveError: error fromSlaveWithId: aSlaveId

	| localError |
	localError := error asLocalObject.
	1 to: localError class instSize do: [ :i |
		localError instVarAt: i put: (localError instVarAt: i) asLocalObject
	].

	(slaves at: aSlaveId)
		addError: localError