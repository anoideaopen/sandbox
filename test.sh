#!/bin/sh
ERR="1"

echo "-- test network up and running"
for i in $(seq 1 60)
do
    if docker compose exec tool status -v
    then
        ERR="0"
        break
    else
        sleep 1
    fi
done

exit "$ERR"
