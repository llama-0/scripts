#!/bin/sh

# Notice: run 'brew install ffmpeg; brew install gifsicle' if needed

if [[ $# -eq 0 ]]
    then
    echo 'usage: ./mov_to_gif_v2 input.mov'
    echo 'This will generate a file input.gif'
    exit
fi

IN=$1
TMP=${IN%.*}
OUT=$TMP.gif
ffmpeg -i $IN -pix_fmt rgb8 -r 10 $OUT && gifsicle -O3 $OUT -o $OUT
