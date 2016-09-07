accessing
forkImage

	| isCloned |
	self cloneVM.
	isCloned := self cloneImage.
	isCloned ifFalse: [ self spawn ].
	^ isCloned