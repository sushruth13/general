#!/usr/bin/env bash


find . -name '*.java' -print0  | xargs -0 sha1sum | sort > file_checksums.txt

echo "-----" > demo_information.txt
echo $USER >> demo_information.txt
cat file_checksums.txt >> demo_information.txt

cat demo_information.txt | nc -v odin.cs.uga.edu 61729
~                                                                      
