forking
cloneImage

	| isFork |
	isFork := Smalltalk backupTo: (self imageLocation withExtension: '') fullName.
	isFork ifTrue: [ self recreateUIProcess ].
	^ isFork