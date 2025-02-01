#!/bin/bash

# This script demonstrates proper error handling when processing files.

file_to_process="my_file.txt"

# Check if the file exists
if [ ! -f "$file_to_process" ]; then
  echo "Error: File '$file_to_process' not found."
exit 1
fi

# Process the file, checking the exit status of commands
cat "$file_to_process" | awk '{ print $1 }' > processed_file.txt
if [ $? -ne 0 ]; then
  echo "Error: processing of '$file_to_process' failed."
exit 1
fi

echo "Processing complete."