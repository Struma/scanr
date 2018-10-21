# Scanning Scripts Built for XFCE4

To make use of my new scanner for large scanning jobs I set up some helper scripts that can be called via hotkey for a fast and effecient workflow. I built this for XFCE4 although it would be trivial to adapt it to any linux system.

<<<<<<< HEAD
![desk](/home/julio/.scanr/imgs/Des-1.jpg  "Deslk_image")
=======
### Why?

Scanning and OCR can be extremely innefiecent and tiresome if you are using a GUI program and scanning large volumes. Using hotkeys makes it possible to scan, OCR, and save without needing to fiddle with a scanning settings or the computer. Once the scans are produced they can be sorted and mass renamed, archived, or converted to a different format.
>>>>>>> bd280bd5bb1dbdba2042cd74382f0ac7137422dd

## Install

1. Clone this repository
2. launch the install.sh script
3. Input the permanent location for this program. I recommend /home/<usr>/.scanr
4. Input the default path for scan images. I recommend /home/<usr>/Pictures/scans/
5. Set up hotkeys yourself from the system settings (below is my custom hotkey keyboard)

![keyboard](/home/julio/.scanr/imgs/Keyboard_2.jpg  "Keyboard")

## Use & Workflow

There are two scanning scripts **scanner_handle.sh** and **scanner_handle_ocr.sh**. The latter does the extra step of performing optical character recogintion, but both produce a 300dpi color JPEG image that is named with the date and time of scan. 

The **scan_cwd.sh** file handles changing the directory where the scans are stored.

Assuming you have set up hot keys for these three scripts,

1. Begin by calling **scan_cwd.sh** and input the desired path for scans to be saved.
2. Call either **scanner_handle** script next and the scanner will perform the scan and save it
3. Scan over and over until you need to call **scan_cwd.sh** again.

![scanner](/home/julio/.scanr/imgs/Scanner.jpg  "Scanner_with_keyboard")

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
