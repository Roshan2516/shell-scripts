# script to execute commands on remote servers using SSH.
#
#!/bin/bash
server="user@remotehost"
command="uptime"
ssh "$server" "$command"
