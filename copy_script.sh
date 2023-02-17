#! /bin/bash

#Function which will make a copy of file/directory without using linux "cp"command:


function cp_script() {
#Doing check that file is exist.
if [ -e "$1" ]
  then
#Doing check that $1 is file.	  
     if [ -f "$1" ]
      then	
        cat "$1" >> "$2"
    fi	

else

	echo "File does not exist."

fi	

}


cp_script $1 $2
# $1 is file that is exist.
# $2 new file where doing copy.
