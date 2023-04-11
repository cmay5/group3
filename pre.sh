#! /bin/bash

wget https://pages.stat.wisc.edu/~jgillett/DSCP/CHTC/wordCounting/shakespeare.tar

tar xf shakespeare.tar

cat shakespeare/*.txt > all_plays.txt

split -l $(( $(wc -l < all_plays.txt) / 5 + 1 )) all_plays.txt chunk_
