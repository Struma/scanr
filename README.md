# Scanning Scripts Built for XFCE4

To make use of my new scanner for large scanning jobs I set up some helper scripts that can be called via hotkey for a fast and effecient workflow. I built this for XFCE4 although it would be trivial to adapt it to any linux system.

## Install

1. Clone this repository
2. launch the install.sh script
3. Input the permanent location for this program. I recommend /home/<usr>/.scanr
4. Input the default path for scan images. I recommend /home/<usr>/Pictures/scans/
5. Set up hotkeys yourself from the system settings

## Use Workflow

There are two scanning scripts **scanner_handle.sh** and **scanner_handle_ocr.sh**. The latter does the extra step of performing optical character recogintion, but both produce a 300dpi color JPEG image that is named with the date and time of scan. 

The **scan_cwd.sh** file handles changing the directory where the scans are stored.

Assuming you have set up hot keys for these three scripts,

1. Begin by calling **scan_cwd.sh** and input the desired path for scans to be saved.
2. Call either **scanner_handle** script next and the scanner will perform the scan and save it
3. Scan over and over until you need to call **scan_cwd.sh** again.

## Files

* **scan_cwd** - script that sets current_scanner.txt
* **scanner_handle.sh** - main program that runs the scanner and saves the images in the default_home.conf
* **scanner_handle_ocr.sh** - main program that runs the scanner and ocr's the result.
* **scan_log.txt** - Scanning log
* **current_scanner.txt** - file that stores the (only) connected scanner
* **defautlt_home.conf** - file that stores the current working dir
* **error_alert.wav** - the error message lol

## Errors

If the scanner cannot be reached or the images fail to save, the error message should play. If the issue is not apparent, check that default_home.conf path ends in "\\".
