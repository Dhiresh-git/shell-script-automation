#!/bin/bash

echo "====status check docker service===="
status="`systemctl status docker|awk 'NR==3 {print}' | cut -d ':' -f 2 |cut -d '(' -f 1`"
echo "$status"
if [ $status = "active" ];
then 
	echo "service is running fine....."

elif [ $status = "inactive" ];
	
	echo "service is not running"
then 
	echo "start docker service now"

	`systemctl start docker`
else 
	echo "docker service is start"

fi
