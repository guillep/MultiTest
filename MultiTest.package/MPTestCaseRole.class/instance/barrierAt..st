events
barrierAt: anEvent

	^ barriers
		at: anEvent
		ifAbsentPut: [ self newBarrierForId: anEvent ]