running
setUp

	super setUp.
	master := MPTestMasterNode new.
	testCase := MPMultiTestCase new.
	master testCase: testCase.
	testCase currentNode: master.
	master testMasterPort: 59260.