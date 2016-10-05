as yet unclassified
testLocalSchedulingDoesNotExecuteTask

	masterTestCase localDo: [ self error ].
	self assert: masterTestCase currentNode deferredActions notEmpty