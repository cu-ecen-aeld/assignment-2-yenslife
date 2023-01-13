#!/bin/sh

if [ ! $# -eq 2 ]; then
	echo "the arguments above were not specified"
	exit 1
fi

writefile=$1
writestr=$2

#echo "a. $writefile b. $writestr"

touch $1
echo $writestr > $writefile

if [ ! -e $writefile ]; then
	echo "create file error"
	exit 1
fi
