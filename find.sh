#!/bin/bash

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
}


search_files "$1"
#$1 can be file or directory.
