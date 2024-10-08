#!/bin/ash

interval_s="${INTERVAL_S:-86400}"

while true
do
	echo "sleeping for $interval_s seconds"
	sleep $interval_s
	OPTIONS=""
	if [[ $REMOVE_ALL == "true" ]]; then
		OPTIONS="$OPTIONS --all"
	fi
	if [[ $REMOVE_VOLUMES == "true" ]]; then
		OPTIONS="$OPTIONS --volumes"
	fi
	docker system prune --force $OPTIONS
done

