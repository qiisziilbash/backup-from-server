You can use these scripts to backup your files from server and keep the last 2 backups (change keep variable in remove_old_dirs.sh to keep more)

Don't forget to give execution permission to the scripts > chmod 755 backup.sh && chmod 755 remove_old_directories.sh
 
If you don't have sshpass installed > sudo apt-get install sshpass

You cand put these scripts in crontab to run daily

59 23 * * * (cd /path/to/your/backup/directory && ./backup.sh && ./remove_old_dirs.sh) 



