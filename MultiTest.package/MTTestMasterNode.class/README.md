I represent a master test node. Whenever a test is started by a user, the test case will be instantiated as a master node. A master node is in charge of the following:

 - execute the test specification to identify how many slaves must be started
 - deploy and start each of the slaves
 - gather the results

Aditionally, a master slave can have local tasks to run that are deferred until all slaves are spawned.