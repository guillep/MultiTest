deployment
cloneImage

	| isFork |
	isFork := Smalltalk backupTo: (self imageLocation fullName copyUpToLast: $.).
	isFork ifTrue: [ self recreateUIProcess ].
	^ isFork