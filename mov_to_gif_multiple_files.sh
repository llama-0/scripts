#!/bin/sh

# Notice: run 'brew install ffmpeg; brew install gifsicle' if needed

if [[ $# -eq 0 ]]
    then
    echo 'usage: ./mov_to_gif_multiple dir_name'
    echo 'This will generate files with the same name in the same directory with but with .gif extension'
    exit
fi

DIR_NAME=$1
for I in $DIR_NAME/*.mov
do
	TMP=${I%.*}
	OUT=$TMP.gif
	ffmpeg -i $I -pix_fmt rgb8 -r 10 $OUT && gifsicle -O3 $OUT -o $OUT
done
