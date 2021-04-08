#!/bin/sh

# Notice: run 'brew install ffmpeg; brew install gifsicle' if needed

if [[ $# -eq 0 ]]
    then
    echo 'usage: ./mov_to_gif input.mov output.gif\n'
    exit
fi

IN=$1
OUT=$2
ffmpeg -i $IN -pix_fmt rgb8 -r 10 $OUT && gifsicle -O3 $OUT -o $OUT
