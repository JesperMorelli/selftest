<-PYT:import texttestlib.queuesystem.nomadapi
<-PYT:texttestlib.queuesystem.nomadapi.__name__
->RET:'texttestlib.queuesystem.nomadapi'
<-PYT:texttestlib.queuesystem.nomadapi.__path__
->RET:raise AttributeError("module 'texttestlib.queuesystem.nomadapi' has no attribute '__path__'")
<-PYT:secrets.token_hex(4)
->RET:'6d049b6a'
<-PYT:texttestlib.queuesystem.nomadapi.get('/v1/nodes', resources='true')
->RET:[{'Drivers': {'raw_exec': {'Detected': True, 'Healthy': True}},
  'ID': '438268a2-3930-b527-1b2d-d0f3800d00b8',
  'Name': 'PDC-1693',
  'NodePool': 'default',
  'NodeResources': {'Cpu': {'CpuShares': 192000, 'TotalCpuCores': 64}},
  'ReservedResources': {'Cpu': {'CpuShares': 0}},
  'SchedulingEligibility': 'eligible',
  'Status': 'ready'}]
<-PYT:texttestlib.queuesystem.nomadapi.get('/v1/nodes', resources='true')
->RET:[{'Drivers': {'raw_exec': {'Detected': True, 'Healthy': True}},
  'ID': '438268a2-3930-b527-1b2d-d0f3800d00b8',
  'Name': 'PDC-1693',
  'NodePool': 'default',
  'NodeResources': {'Cpu': {'CpuShares': 192000, 'TotalCpuCores': 64}},
  'ReservedResources': {'Cpu': {'CpuShares': 0}},
  'SchedulingEligibility': 'eligible',
  'Status': 'ready'}]
<-PYT:texttestlib.queuesystem.nomadapi.request('POST', '/v1/jobs', {'Job': {'Constraints': [],
 'ID': 'texttest-6d049b6a-Test-Basic-SLEEP.killing',
 'Name': 'Test-Basic-SLEEP.killing',
 'NodePool': 'default',
 'TaskGroups': [{'Count': 1,
 'Name': 'slave',
 'ReschedulePolicy': {'Attempts': 0, 'Unlimited': False},
 'RestartPolicy': {'Attempts': 0, 'Mode': 'fail'},
 'Tasks': [{'Config': {'args': ['-d',
          'C:\\Users\\jmh\\AppData\\Local\\Temp\\claude\\46e7f0ddbd402f86\\ebe205e2-1d6f-4f90-97a3-94dddade3b39\\scratchpad\\st-tmp\\ci.nomad.10Nov100741.35996\\texttest.nomad\\QueueSystems\\ErrorHandling\\Console\\PollSlaveCrash\\TargetApp',
          '-a',
          'sleep.killing',
          '-l',
          '-tp',
          'Basic',
          '-slave',
          'C:\\Users\\jmh\\AppData\\Local\\Temp\\claude\\46e7f0ddbd402f86\\ebe205e2-1d6f-4f90-97a3-94dddade3b39\\scratchpad\\st-tmp\\ci.nomad.10Nov100741.35996\\texttest.nomad\\QueueSystems\\ErrorHandling\\Console\\PollSlaveCrash\\texttesttmp\\sleep.killing.10Nov100742.12712',
          '-servaddr',
          '127.0.0.1:53098',
          '-b',
          'short_local'],
 'command': 'C:\\Users\\jmh\\AppData\\Local\\Temp\\claude\\46e7f0ddbd402f86\\ebe205e2-1d6f-4f90-97a3-94dddade3b39\\scratchpad\\stvenv\\Scripts\\texttest'},
 'Driver': 'raw_exec',
 'Env': {'STANDARD': 'C:\\Users\\jmh\\AppData\\Local\\Temp\\claude\\46e7f0ddbd402f86\\ebe205e2-1d6f-4f90-97a3-94dddade3b39\\scratchpad\\st-tmp\\ci.nomad.10Nov100741.35996\\texttest.nomad\\QueueSystems\\ErrorHandling\\Console\\PollSlaveCrash\\standard'},
 'Name': 'slave',
 'Resources': {'CPU': 3000}}]}],
 'Type': 'batch'}})
->RET:{'EvalCreateIndex': 1363,
 'EvalID': '076f8018-414a-5de4-fb37-1ca18db84b6c',
 'Index': 1363,
 'JobModifyIndex': 1363,
 'KnownLeader': False,
 'LastContact': 0,
 'NextToken': '',
 'Warnings': ''}
<-PYT:texttestlib.queuesystem.nomadapi.get('/v1/jobs', prefix='texttest-6d049b6a-')
->RET:[{'ID': 'texttest-6d049b6a-Test-Basic-SLEEP.killing', 'Status': 'dead'}]
<-PYT:texttestlib.queuesystem.nomadapi.get('/v1/job/texttest-6d049b6a-Test-Basic-SLEEP.killing/allocations')
->RET:[{'ClientStatus': 'failed',
  'ID': 'ed0797e5-5b43-b38e-73cd-312bf3cf4469',
  'NodeName': 'PDC-1693',
  'TaskStates': {'slave': {'Events': [{'DisplayMessage': 'Task received by client', 'Type': 'Received'},
                                      {'DisplayMessage': 'Building Task Directory', 'Type': 'Task Setup'},
                                      {'DisplayMessage': 'Task started by client', 'Type': 'Started'},
                                      {'DisplayMessage': 'Exit Code: 1', 'Type': 'Terminated'},
                                      {'DisplayMessage': 'Policy allows no restarts', 'Type': 'Not Restarting'}],
                           'Failed': True}}}]
<-PYT:texttestlib.queuesystem.nomadapi.request('GET', '/v1/client/fs/logs/ed0797e5-5b43-b38e-73cd-312bf3cf4469', params={'offset': 4096, 'origin': 'end', 'plain': 'true', 'task': 'slave', 'type': 'stderr'}, parseJson=False)
->RET:("Unable to load application from file 'config.sleep' - Cannot find file '$STANDARD_PERSONAL' to import config file settings "
 'from.\r\n'
 "Tried directories: ['C:\\\\projects\\\\git\\\\texttest\\\\texttestlib\\\\etc', 'C:\\\\Users\\\\jmh\\\\.texttest\\\\etc', "
 "'C:\\\\Users\\\\jmh\\\\AppData\\\\Local\\\\Temp\\\\claude\\\\46e7f0ddbd402f86\\\\ebe205e2-1d6f-4f90-97a3-94dddade3b39\\\\scratchpad\\\\st-tmp\\\\ci.nomad.10Nov100741.35996\\\\texttest.nomad\\\\QueueSystems\\\\ErrorHandling\\\\Console\\\\PollSlaveCrash\\\\TargetApp'].\r\n")
