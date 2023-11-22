#!/bin/sh

LOG_FILE_NAME="certbotRenewer.log"

function auto_12h_renew() {
	echo
	echo "auto_12h_renew started at $(date)" > "/var/log/certbot/$LOG_FILE_NAME"

	while true; do
		echo "Last attempt to renew cert started at $(date)" > "/var/log/certbot/$LOG_FILE_NAME"
		{ certbot renew; } >> "/var/log/certbot/$LOG_FILE_NAME" 2>&1
		sleep 12h & wait $!
	done
}

auto_12h_renew
