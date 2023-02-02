#!/bin/bash

# create a function to calculate average frequency of letters
calculate_avg() {
  # loop through the 26 letters of the alphabet
  for i in {a..z}
  do
    # count the number of times each letter appears in the file
    frequency=$(grep -o $i "$1" | wc -l)
    # calculate the average frequency by dividing the frequency by the number of letters
    avg=$((frequency / 26))
    # print the result
    echo "The average frequency of letter $i in the file $1 is $avg."
  done
}

# check if a file name is provided as an argument
if [ $# -eq 0 ]
then
  echo "Error: No file name provided."
  echo "Usage: ./script.sh text_file.txt"
  exit 1
else
  # call the function and pass the name of the text file as an argument
  calculate_avg "$1"
fi








