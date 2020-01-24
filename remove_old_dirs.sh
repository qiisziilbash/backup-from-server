#!/bin/bash
cd /path/to/your/backup/directory

# collect the directory names and put them in old_dirs.txt
# skip the ./
find ./ -maxdepth 1 -type d -print | sort | tail -n +2 > old_dirs.txt

# find the number of directoies
count=0
while read p; do
	((count=count+1))
done < old_dirs.txt


#keep last 2 backups
keep=2

for ((i = 1 ; i <= count-keep ; i++)) ; do
	read p
	rm -r $p
done < old_dirs.txt

