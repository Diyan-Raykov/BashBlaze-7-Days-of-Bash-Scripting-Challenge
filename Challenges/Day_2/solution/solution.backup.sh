#!/bin/bash

#receive argument
read -p "enter directory you want to use as backup storage " DirInput

#backup location

backup_location=$($DirInput)backup_$(date +%Y-%m-%d_%H-%M-%S)

#make backup directory

mkdir -p $backup_location

#tell user that the dir is created
echo -e "Backup created: $backup_location"

# copy files recursively
cp $(find . -maxdepth 1 -type f) $backup_location
#delete old files
count=$(ls -ltrd $DirInput/backup* |wc -l)

math=$(( $count-3 ))
if [ $math -gt 0 ]; then
ls -ltrd */ | head -$math |xargs rm -fr
fi

