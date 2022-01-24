#!/bin/bash

#variables
AssignName=$1
ClassCode=$2
AssumedDiff=$3
TimeSpent=$4
re='^[0-9]+$'

#message functions
ArgNumMessage () {
    echo "$1[Assignment Name] [Class Code] [Assumed Difficulty x/10] [Time Spent]"
}
AssumedDiffMessage () {
    echo "error: $1 is not a valid number!"
}

#check for number of arguments
if [ $# -eq 0 ]; then #check if there is no arguments
    ArgNumMessage
    exit 1
else if [ $# -lt 4 ]; then #check if there is less than 4 arguments
    ArgNumMessage "Missing arguments! (4 arguments only!!): "
    exit 1   
else if [ $# -gt 4 ]; then #check if there is more than 4 arguments
    ArgNumMessage "Too many arguments! (4 arguments only!!): "
    exit 1
fi
fi
fi

#check for each argument

if ! [[ $AssumedDiff =~ $re ]]; then #check if the difficulty is not a number
    AssumedDiffMessage $AssumedDiff; exit 1
else if [ $AssumedDiff -gt 10 ]; then #checks if the number is bigger than 10
    AssumedDiffMessage $AssumedDiff; exit 1
fi
fi