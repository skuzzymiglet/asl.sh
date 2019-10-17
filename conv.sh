#! /bin/bash

shopt -s nullglob

for x in ~/screenlapse/*.h264; do
        ffmpeg -n -i $x -c copy -framerate 30 ${x/h264/mp4}
        rm $x
done
