#!/bin/bash

# Script Name:                     array.sh
# Author:                          Kevin Williams
# Date of latest revision:         10/26/2023
# Purpose:                         Creating directories                      

# Declaration of variables
directories=("dir1" "dir2" "dir3" "dir4")

# Declaration of functions
for dir in "${directories[@]}"; do
    mkdir -p "$dir"
done

for i in "${!directories[@]}"; do
    file_path="${directories[i]}/file_${i}.txt"
    echo "$i" > "$file_path"
done

# Main
echo "Directories and files created:"
ls -R

#End