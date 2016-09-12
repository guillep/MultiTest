as yet unclassified
barrierAt: anEvent

	^ barriers
		at: anEvent
		ifAbsentPut: [ MPTestBarrier new
			barrierId: anEvent;
			testNode: self ]