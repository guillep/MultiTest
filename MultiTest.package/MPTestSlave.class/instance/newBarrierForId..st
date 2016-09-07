as yet unclassified
newBarrierForId: anEvent

	^ MPTestSlaveBarrier new
		barrierId: anEvent;
		testCaseRole: self