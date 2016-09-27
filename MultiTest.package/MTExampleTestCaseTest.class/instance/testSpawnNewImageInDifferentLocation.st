tests-state
testSpawnNewImageInDifferentLocation

	| masterLocation |
	masterLocation := FileLocator workingDirectory.
	self with: #spawn do: [ self assert: masterLocation = FileLocator workingDirectory ]