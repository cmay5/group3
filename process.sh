#! /bin/bash

# Arguments
input="$1"
output="formatted_${input}"

# Make all letters lowercase
tr '[:upper:]' '[:lower:]' < "$input" > "$output"

# Remove punctuation
sed -i 's/[:punct:]//g' "$output"

# Make it have one word per line
sed -i 's/[[:space:]]+/\n/g' "$output"

# Remove blank lines
grep -v "^[[:space:]]*$" "$output" > "$output.tmp" && mv "$output.tmp" "$output"

# Sort the file of words
sort "$output" -o "$output"

# Output the formatted file name
echo "$output"
