#!/bin/bash

t="timeout 300"
output_folder="results2/tutor1/"
count=0
stop=1001
for filename in tests/clean_AutoTutor/*; do
  #echo $filename
  #echo $output_folder${filename##*/}
  count=$((count+1))
  if [ "$count" -lt "$stop" ]; then
    echo $count
  else
    continue
    #$t java -jar target/regfixer.jar --mode 1 fix --file $filename > $output_folder${filename##*/}
  fi
done
