testing
isDeployed
	
	^ self vmBinaryLocation exists and: [ self imageLocation exists ]