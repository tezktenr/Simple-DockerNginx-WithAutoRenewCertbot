#!/bin/bash

LOG_FILE_NAME="nginx6hReloader.log"

function auto_6h_reload {
	echo
	echo "auto_6h_reload started at $(date)" > "/var/log/nginx/$LOG_FILE_NAME"
	
	while true; do
		sleep 6h
		echo "Last reload started at $(date)" > "/var/log/nginx/$LOG_FILE_NAME"
		{ nginx -t && nginx -s reload; } >> "/var/log/nginx/$LOG_FILE_NAME" 2>&1
	done
}

auto_6h_reload &
