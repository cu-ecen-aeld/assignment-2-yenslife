#!/bin/sh

if [ $# -ne 2 ]
then
	echo "the arguments above were not specified"
	exit 1
fi

writefile=$1
writestr=$2

#touch $1 this will fail because we may create a file with directories

mkdir -p `dirname $writefile`
touch $writefile

if [ $? -eq 1 ]
then
	echo "create file error"
	exit 1
fi

echo $writestr > $writefile

