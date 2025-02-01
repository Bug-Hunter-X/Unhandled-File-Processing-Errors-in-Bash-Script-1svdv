# Unhandled File Processing Errors in Bash Script

This repository demonstrates a common error in bash scripting: improper error handling when processing files.

The `bug.sh` script attempts to read a file (`my_file.txt`) and extract the first column using `awk`.  However, it fails to check if the file exists before attempting to process it, making it prone to errors if `my_file.txt` is missing.

The `bugSolution.sh` script shows the corrected version of the script that includes proper error handling, checking file existence and the return codes of the commands used.