#! /bin/bash


export LC_ALL = C 
sort -m chunk_* -o merge_file.txt

uniq -c merge_file.txt > countsOfWords
sort -nr -o countsOfWords countsOfWords

echo "countsOfWords"



# Merge the sorted small files into one large sorted file
#export LC_ALL=C
#sort -m -o merged_sorted.txt *_sorted.txt

# Convert the merged sorted file to countsOfWords and sort by descending count
#uniq -c merged_sorted.txt | sort -rn > countsOfWords.txt
