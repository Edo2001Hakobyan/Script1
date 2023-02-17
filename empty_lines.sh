#! /bin/bash
#Delete all the empty lines from the file and save it back.
function empty_lines_script() {
#Doing check that file is exist.	
if [ -e "$1" ]
    then
#Command that delete empty line.	    
      sed -i '/^$/d' "$1"
else
  echo "File does not exist."

fi

}

empty_lines_script $1
#$1-File that is exist and which empty line want to delete.
