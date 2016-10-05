tests
testStartSlavesMakesThemRun

	| masterTestCase futures |
	masterTestCase := MTMultiTestCaseForTest forMaster: #testSlaveSuccessLong.
	masterTestCase configure.
	futures := masterTestCase currentNode startSlaves.

	"Wait until the process really starts"
	50 milliSeconds wait.
	masterTestCase currentNode slaves do: [ :each |
		self assert: each isRunning ].