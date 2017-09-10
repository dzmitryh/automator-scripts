#!/bin/bash

input_folder="$@"

for file in $input_folder/*.CR2; 
do 
  filename=$(basename "$file")
  extension="${filename##*.}"
  filename="${filename%.*}"
  sips -s format jpeg $file --out $input_folder/$filename.jpg
done