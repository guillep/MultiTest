I am a command line handler for multitest, used to launch slave test cases. I receive as arguments:
 - the test class name
 - the test selector
 - the slave id to start

I will start a slave test case of the given class, selector and id, and exit with either a success (0) or error (1).