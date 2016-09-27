forking
forkImage

	^ ((self workerPool future: [ self cloneVM ])
		collect: [ :value | self cloneImage ])
			collect: [ :isForked |
				isForked ifFalse: [ self spawn ].
				isForked ]