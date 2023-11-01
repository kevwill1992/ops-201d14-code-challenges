#!/bin/bash

# Script Name:                     System Info
# Author:                          Kevin Williams
# Date of latest revision:         10/31/2023
# Purpose:                         Test System                     

# Declaration of variables

if [ "$EUID" -ne 0 ]; then
    echo "Please run this script as root using sudo."
    exit 1
fi

display_info() {
    local component="$1"
    echo "===== $component Information ====="

}

# Declaration of functions
display_info "computer"

display_info "cpu"

display_info "memory"

display_info "display"

display_info "network"

# End
