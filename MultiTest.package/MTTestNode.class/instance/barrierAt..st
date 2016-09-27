as yet unclassified
barrierAt: anEvent

	^ barriers
		at: anEvent
		ifAbsentPut: [ MTTestBarrier new
			barrierId: anEvent;
			testNode: self ]