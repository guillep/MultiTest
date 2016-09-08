events
newBarrierForId: anEvent

	^ MPTestBarrier new
		barrierId: anEvent;
		testCaseRole: self