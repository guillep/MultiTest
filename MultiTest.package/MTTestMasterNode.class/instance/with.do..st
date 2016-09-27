as yet unclassified
with: anId do: aDeferredAction

	^ (self slaveAtId: anId)
		addDeferredAction: aDeferredAction;
		yourself