as yet unclassified
newBarrierForId: anEvent

	^ MPTestMasterBarrier new
		barrierId: anEvent;
		testCaseRole: self