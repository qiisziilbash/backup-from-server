#!/bin/bash 

cd /path/to/your/backup/directory
current_dir=$(date +%Y%m%d_%H%M%S)
mkdir $current_dir
sshpass -p 'put your password here' scp -r username@server.com:/path/to/your/file $current_dir


