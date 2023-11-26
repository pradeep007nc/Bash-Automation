#!/bin/bash

DIR=$1

#checking for valid directory
if [ ! -d "$DIR"]; then
    echo "directory doesnt exist"
    exit 1
fi

#loop through all files in dir
for file in $(find "$DIR" -name "*"); do

    #read the data from file
    data=$(cat "$file")

    #do something with the data
    echo "$data"

done

