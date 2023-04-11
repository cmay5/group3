#! /bin/bash


export LC_ALL = C 
sort -m formatted_chunk_* -o merge_file.txt

uniq -c merged_file.txt > countsOfWords
sort -nr -o countsOfWords countsOfWords

echo "countsOfWords"
