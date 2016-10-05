I represent a test case that executes several pieces of code in different processes. I will duplicate the current running image in several slaves and run a piece of code in each. Afterwards, the main test case from the original image (the master) joins the results into a single result.

I am intended to do integration tests of distributed applications. 