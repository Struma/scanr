#!/bin/bash
# Ask the user for their name
xfce4-terminal -e 'bash -c " echo 'Current\ cwd\ is\ '; 
    cat $HOME/.scanr/default_home.conf; 
    echo 'Enter\ the\ new\ working\ path.\ **must\ be\ absolute';
    read path; 
    mkdir -p $path;
    echo $path > $HOME/.scanr/default_home.conf; 
    echo 'Your\ new\ working\ dir\ is\ '$path;
    sleep 2s "' 



