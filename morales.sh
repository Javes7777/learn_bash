#!/bin/bash

E_NOARGS=85

# -z will return true if string's length is 0
# here its true as echo$1 will give you nothing
# whereas -z "$12" will be false
echo "$1235"

if [ -z "$1" ]
then 
	echo "USAGE: basename $0 targetfile"
	exit $E_NOARGS
fi

#sed -e /^v/d "$1"

# the -e means an editing command follows
