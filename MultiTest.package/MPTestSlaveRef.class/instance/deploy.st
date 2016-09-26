forking
deploy

	^ ((TKTFuture doing: [ self cloneVM ])
		collect: [ :value | self cloneImage ])
			collect: [ :isFork |
				isFork ifTrue: [ self installAsSlaveNode ].
				isFork ]