#!/bin/sh

if [[ $# -eq 0 ]]
    then
    echo 'usage: ./program input_file\n'
fi

valgrind --leak-check=full \
         --show-leak-kinds=all \
         --track-origins=yes \
         --verbose \
         --log-file=valgrind-out.txt \
         $1 $2
