running
setUp

	super setUp.
	master := MTTestMasterNode new.
	testCase := MTMultiTestCase new.
	master testCase: testCase.
	testCase currentNode: master.
	master testMasterPort: 59260.