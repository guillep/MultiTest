forking
forkImage

	^ ((TKTFuture doing: [ self cloneVM ])
		collect: [ :value | self cloneImage ])
			collect: [ :isForked |
				isForked ifFalse: [ self spawn ].
				isForked ]