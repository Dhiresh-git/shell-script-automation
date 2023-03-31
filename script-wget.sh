#!/bin/bash
echo "Download the prometheus binaries"
if [ -e /home/dhiresh/vs-code/project/script/shell-script-automation/prometheus-2.42.0.linux-amd64.tar.gz ];
then 
       echo "file is already existing so no need to download"
       tar -zxvf /home/dhiresh/vs-code/project/script/shell-script-automation/prometheus-2.42.0.linux-amd64.tar.gz
else   
       echo "binary does not exists in system first we need to download it"
       wget https://github.com/prometheus/releases/download/v2.42.0/prometheus-2.42.0.linux-amd64.tar.gz
       tar -zxvf /home/dhiresh/vs-code/project/script/shell-script-automation/prometheus-2.42.0.linux-amd64.tar.gz
       echo "file has been extracated ,you can start prometheus"
fi
