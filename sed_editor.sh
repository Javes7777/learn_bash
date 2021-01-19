#!/bin/bash

# we will entertain no arguments
E_NOARGS=85

# -z will return true if string's length is 0
# here its true as echo$1 will give you nothing
# whereas -z "$12" will be false as the string is "2"

if [ -z "$1" ]
then 
	echo "USAGE: basename $0 targetfile"
	exit $E_NOARGS
fi

sed -i /^$/d "$1" 

# in the command line: sed -i /^$/d filename
# learn sed for more info

# the -e means an editing command follows
# ^ indicates beginning of file and $ means the end 
# this means to find lines that have norhing between start and ending i.e. blank lines
# d is the delete command

#exit
