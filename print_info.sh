#!/bin/bash

path_to_info = info.txt

echo "Hello, $(whoami)" > $path_to_info
echo "" >> info.txt
echo "time: $(date)" >> info.txt
echo "os: $(uname)" >> info.txt

find $HOME -type f | wc -l | awk '{print ("num files: ", $1)}' >> info.txt
ls -l $HOME | grep "^d" | wc -l | awk '{print ("num folders: ", $1)}' >> info.txt
df -h $HOME | awk 'NR==2{print ("memory: ", $3, "(used), ", $4, "(free)")}' >> info.txt
