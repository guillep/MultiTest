forking
deploy

	^ ((self workerPool future: [ self cloneVM ])
		collect: [ :value | self cloneImage ])
			collect: [ :isFork |
				isFork ifTrue: [ self installAsSlaveNode ].
				isFork ]