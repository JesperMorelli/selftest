Using nomad queues for Application SLEEP, version killing
Q: Submitting SLEEP.killing test-case Basic to default nomad queue
S: SLEEP.killing test-case Basic not compared:
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

Results:

Tests that did not succeed:
  SLEEP.killing test-case Basic not compared: nomad job exited

Tests Run: 1, Incomplete: 1
Creating batch report for application SLEEP ...
File written.
