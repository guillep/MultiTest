initialization
currentNode
	^ currentNode ifNil: [ 
		self beMasterNode.
		currentNode ]