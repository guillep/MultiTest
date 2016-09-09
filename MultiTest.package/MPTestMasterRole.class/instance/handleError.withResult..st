as yet unclassified
handleError: anException withResult: aResult

	anException sunitAnnounce: testCase toResult: aResult.
	"This should only happen if it is not an expected failure..."
	anException pass