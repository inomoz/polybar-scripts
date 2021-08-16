#!/bin/sh

STATUS="running"

for stat in $STATUS; do
    output="$output $(docker ps -qf status="$stat" | wc -l)"
done

echo "$output"
