# script to synchronize files or directories between local and remote locations.
#
#!/bin/bash
local_dir="/path/to/local/dir"
remote_dir="user@remotehost:/path/to/remote/dir"
rsync -avz "$local_dir" "$remote_dir"
