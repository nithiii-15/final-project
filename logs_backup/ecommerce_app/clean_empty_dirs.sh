#!/bin/bash

# Check if a directory is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

# Define the directory to clean
DIRECTORY="$1"

# Check if the provided argument is a directory
if [ -d "$DIRECTORY" ]; then
    # Find and delete empty directories
    find "$DIRECTORY" -type d -empty -delete
    echo "Deleted all empty directories in $DIRECTORY."
else
    echo "Error: $DIRECTORY is not a valid directory."
    exit 1
fi
