#!/bin/bash
#directory path to make this task work make sure to adjust the task path in the backup_dir var 
backup_dir=$"/home/elknawy/Desktop/elknawy/backup"
#mkdir -> make a directory into the directory backup with  a time stamp of year-month-day-hour make sure to adjust the task-directory to ensure the task work 
mkdir $backup_dir/backup$(date +%Y-%m-%d-%H)|rsync -av /home/elknawy/Desktop/elknawy/task-directory/  $backup_dir/backup$(date +%Y-%m-%d-%H)
#going into the directory 
cd $backup_dir
#list all the files with backup name in it and include only the last five directories been created 
ls -t | grep "backup" | tail -n +6 | xargs -d '\n' rm -rf
