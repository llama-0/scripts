#!/bin/sh

while true; do
    if ! pgrep -x $1 > /dev/null
        then
            echo "$1 stopped\n"
        break
    fi
    leaks $1 | tail -2
    sleep 5
done
