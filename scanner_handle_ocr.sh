#!/bin/bash

cd $HOME/.scanr/

filename=$( date +"%F_%T_scan.jpg" )

tesseract_name=$( echo $filename | sed 's/.jpg//' )

scanner=$( cat current_scanner.txt )

file_path=$( cat default_home.conf )

{

scanimage -d "$scanner" --resolution 300 -y 280 --mode colo --mode color --format tiff | convert -rotate "180" tiff:- $file_path$filename 

} || {

scanner=$( scanimage -L | grep -Po "gene.*(?=\')" )

echo $scanner  > current_scanner.txt

scanimage -d "$scanner" --resolution 300 -y 280 --mode colo --mode color --format tiff | convert -rotate "180" tiff:- $file_path$filename



} || {

paplay error_alert.wav

}

tesseract $file_path$filename $file_path$tesseract_name