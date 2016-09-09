forking
forkImage

	| isForked |
	self cloneVM.
	isForked := self cloneImage.
	isForked ifFalse: [ self spawn ].
	^ isForked