#!/bin/sh

statusCode=$(curl -s -o /dev/null -w "%{http_code}" http://$PYTHON_API_HOSTNAME:5290/get_info)

if [ $statusCode == "200" ]; then
	echo "service available"
	exit 0
else 
	echo "service unavailable"
	exit 1
fi
