#! /bin/bash


ffmpeg -f x11grab -s 3200x1800 -i :0.0 -c:v libvpx-vp9 -crf 15 -filter:v "setpts=0.01*PTS" -threads 1 ~/`date +screenlapse/%d_%m_%y-%H%M%S`.webm

