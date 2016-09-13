forking
forkImage

	^ ((TKTFuture doing: [ self cloneVM ])
		collect: [ :value | self cloneImage ])
			collect: [ :isForked |
				isForked ifTrue: [ self spawn ].
				isForked ]