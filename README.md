# Scanning Scripts

Most of the files in this folder support a fast scanning workflow.

## Files

**current_scanner.txt** - file that stores the (only) connected scanner
**defautlt_home.conf** - file that stores the current working dir
**err.sh** - test file
**error_alert.wav** - the error message lol
**scan_cwd** - script that sets current_scanner.txt
**scan_log.txt** - Scanning log
**scanner_handle.sh** - main program that runs the scanner and saves the images in the default_home.conf

## Errors

If the scanner cannot be reached or the images fail to save, the error message should play. If the issue is not apparent, check that default_home.conf path ends in "\\".