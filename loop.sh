#!/bin/bash

# Script Name:                     loop.sh
# Author:                          Kevin Williams
# Date of latest revision:         10/27/2023
# Purpose:                         Test Loops                     

# Declaration of variables

# Declaration of functions

while true; do
    echo "Currently running processes:"
    ps aux

    read -p "Enter the PID of the process to kill (or Ctrl+C to exit): " pid

    if [ -n "$pid" ]; then
        if kill -9 "$pid" 2>/dev/null; then
            echo "Killed process with PID $pid"
        else
            echo "Failed to kill process with PID $pid"
        fi
    fi
done

# End