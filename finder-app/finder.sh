#!/bin/sh

filesdir=$1
searchstr=$2

if [ ! -d $1 ]
then
	echo "filesdir does not represent a directory on the filesystem"
	exit 1
fi

if [ ! $# -eq 2 ]
then
	echo "parameters above were not specified"
	exit 1
fi

X=$(find $1 -type f | wc -l)
Y=$(grep -r "$2" $1/* | wc -l)

echo "The number of files are $X and the number of matching lines are $Y"
