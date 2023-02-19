#!/bin/bash
#Doing check that $1 is exist or not.	
if [ -e $1 ]
 then
   function search_files() {
      for item in $(ls "$1"); do
#Doing check that $1 is directory.	  
         if [ -d "$1/$item" ]; then	   
	      echo "./$item"    
             search_files "$1/$item"
#Doing check that $1 is file and equal all positional arguments.      
         elif [[ "$1" == $*  ]]; then
            echo "./$item"
       fi
      done
else
    echo "file or directory does not exist"
fi  
}


search_files "$1"
#$1 can be file or directory.
