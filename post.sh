#! /bin/bash

export LC_ALL=C
sort -m -o merged_sorted.txt *_sorted.txt
uniq -c merged_sorted.txt | sort -rn > countsOfWords.txt


#V1   changed to make sure it works with the updated version of process. 
#export LC_ALL = C 
#sort -m chunk_* -o merge_file.txt
#uniq -c merge_file.txt > countsOfWords
#sort -nr -o countsOfWords countsOfWords
#echo "countsOfWords"

