base_version:queuesystem

[run_dependent_text]
# The TextTest program in the Nomad job specifications sent by the master
pythonmocks:'command': '[^']*'{REPLACE 'command': '<path_to_texttest>'}
[end]
