as yet unclassified
broadcastBarrier: aBarrierId

	self slaves do: [ :slave | slave announce: aBarrierId ]