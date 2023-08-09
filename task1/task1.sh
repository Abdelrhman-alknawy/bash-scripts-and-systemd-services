#!/bin/bash
#validate that passed two arguments 
if [ "$#" -gt  2 ] || [ "$#" -lt  2 ]
then 
 echo "to use this script : arg1 = file_to_copy arg2 = directory to be coppied into "
 exit 1
fi

if [ -d $2 ] && [ -f $1 ]
then 
#copy file to the directory selected  
 cp "$1" "$2" 
 cd "$2" 
 #set the permission of the file as mentioned per the requirements 
 #owner permission is rwx group permission is r-- other groups --- 
 chmod  740 $1
#checks if either the file nor the directory doesn't exist 
else 
 if [ ! -f $1 ]
  then 
  echo "file doesn't exist "
 else 
  echo "directory doesn't exist " 
  exit 1 
 fi    
fi 
