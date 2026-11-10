unrunnable=1
10Nov2026
SLEEP killing : 1 tests : 1 unrunnable

Summary of all Unsuccessful tests follows...
---------------------------------------------------------------------------------
The following tests could not be run : 
In SLEEP.killing test-suite TargetApp:
  - SLEEP.killing test-case Basic : nomad job exited


Details of all Unsuccessful tests follows...
---------------------------------------------------------------------------------

Detailed information for the tests that could not be run follows...
--------------------------------------------------------
TEST could not be run : SLEEP.killing test-case Basic (under Basic)
nomad job exited
Job ID was texttest-6d049b6a-Test-Basic-SLEEP.killing
---------- Full accounting info from Nomad ----------
Allocation ed0797e5-5b43-b38e-73cd-312bf3cf4469 on node PDC-1693 is failed
  Received: Task received by client
  Task Setup: Building Task Directory
  Started: Task started by client
  Terminated: Exit Code: 1
  Not Restarting: Policy allows no restarts
---------- End of slave standard error ----------
Unable to load application from file 'config.sleep' - Cannot find file '$STANDARD_PERSONAL' to import config file settings from.
Tried directories: ['C:\\projects\\git\\texttest\\texttestlib\\etc', 'C:\\Users\\jmh\\.texttest\\etc', 'C:\\Users\\jmh\\AppData\\Local\\Temp\\claude\\46e7f0ddbd402f86\\ebe205e2-1d6f-4f90-97a3-94dddade3b39\\scratchpad\\st-tmp\\ci.nomad.10Nov100741.35996\\texttest.nomad\\QueueSystems\\ErrorHandling\\Console\\PollSlaveCrash\\TargetApp'].

