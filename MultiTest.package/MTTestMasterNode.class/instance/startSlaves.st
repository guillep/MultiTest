running
startSlaves

	self slaves ifEmpty: [ ^ TKTFuture of: true ].
	self slaves do: [ :each | each deploy ].
	^ (self slaves collect: [ :each | each run ])
		reduce: [ :a :b | a flatCollect: [ :v | b ] ].