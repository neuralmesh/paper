#!/bin/bash

# Function to display help message
print_help() {
    echo "Usage: $0 [DIRECTORY] [GLOB_PATTERN] [OPTIONS]"
    echo "DIRECTORY:    Directory to search (default is current directory)"
    echo "GLOB_PATTERN: Glob pattern for file matching (default is all files)"
    echo "OPTIONS:      Additional options for 'find' command (e.g., '-r' for recursive search)"
}

# Check for help request
if [[ "$1" == "-h" || "$1" == "--help" ]]; then
    print_help
    exit 0
fi

# Main command
find "${1:-.}" -name "${2:-*}" ${3} -exec echo Filename: {} \; -exec cat {} \; || print_help

