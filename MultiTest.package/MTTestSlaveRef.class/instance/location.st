forking-locations
location

	^ location ifNil: [ location := FileLocator workingDirectory / 'multitest' / UUID new asString ]