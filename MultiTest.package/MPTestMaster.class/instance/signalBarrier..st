as yet unclassified
signalBarrier: aBarrier

	self spawnedImages do: [ :image | image announce: aBarrier barrierId ]