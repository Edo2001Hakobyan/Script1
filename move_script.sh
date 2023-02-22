#! /bin/bash
#Function which will move file/directory hierarchy without using linux  mv command.
function move_script() {
# Doing check that file or directory is exist.	
if [ -e "$1" ]
then
#Doing check that $1 is file.	
	if [ -f "$1" ]
	then
		cp -ln "$1" "$2"
		rm "$1"
#Doing check that $1 is directory.		
	elif [ -d "$1" ]
	then 
		cp -r "$1"/* "$2"
		rm -r "$1"
#Doing check that $1 is file and $2 is directory		
	elif [ -f "$1" ] && [ -d "$2" ]
	then
		cp "$1" "$2/"
		rm "$1"

	fi
else
    echo "$1 file/directory does not exist. "
fi    

}


move_script  $1 $2
# $1-file or directory that is exist.
# $2-new name file or directory or can be directory.
