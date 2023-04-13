#! /bin/bash


export LC_ALL = C 
sort -m chunk_* -o merge_file.txt

uniq -c merge_file.txt > countsOfWords
sort -nr -o countsOfWords countsOfWords

echo "countsOfWords"
