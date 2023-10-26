#!/bin/bash

# Script Name:                     function.sh
# Author:                          Kevin Williams
# Date of latest revision:         10/25/2023
# Purpose:                         Test Functions                      

# Declaration of variables

# Declaration of functions
print_login_history() {
    echo "User Login History:"
    last
    echo "This is the login history."
}

# Main
print_login_history
print_login_history
print_login_history

# End