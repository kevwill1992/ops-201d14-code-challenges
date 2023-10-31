#!/bin/bash

# Script Name:                     Conditionals 
# Author:                          Kevin Williams
# Date of latest revision:         10/30/2023
# Purpose:                         Test Conditionals                   
# Additional Sources:              https://chat.openai.com/share/71bd0266-3de3-45dc-b0bb-eb05493126a0

# Declaration of variables
paths=(/path/to/directory /path/to/file.txt)

# Declaration of functions

for path in "${paths[@]}"; do

  # If the path does not exist, create it.
  if [ ! -e "$path" ]; then
    if [ -d "$path" ]; then
      mkdir -p "$path"
    else
      touch "$path"
    fi
  fi

done

# End