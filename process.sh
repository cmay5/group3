#! /bin/bash

for i in chunk_aa chunk_ab chunk_ac chunk_ad chunk_ae: do tr '[:upper:]' '[:lower:]' | sed -e 's/[[:punct:]]//g' | sed -e 's/[\t]/\n/g' | grep -v "^\s*$" | sort; done



# cat chunk_aa | tr '[:upper:]' '[:lower:]' | sed -e 's/[[:punct:]]//g' | sed -e 's/[[:space:]]/\n/g' | grep -v "^[[:space:]]*$" | sort > "chunk_aa_sorted.txt"

