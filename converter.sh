#! /bin/bash

counter=0
numfiles=$(ls | wc -l)

for i in *.avi; do ffmpeg -i "$i"  -vcodec libx264 -crf 23 -threads 1 "${i%.*}.mp4"; counter=$((counter+1)); rm "$i";

notify-send "Finalizado" "Se ha convertido $i. ($counter/$numfiles)";


done