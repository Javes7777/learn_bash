#!/bin/bash

# with this script we can substitute one pattern for another in a file
# example: bash subst.sh Morales Peter test_text2.txt 
#						 Morales replaces Peter
#


ARGS=3 # 3 arguments for this script
E_BADARGS= # to check if wrong number of args passed to script

if [ $# -ne "$ARGS" ] # if number of arguments passed not equal to $ARGS
then 
	echo "USAGE: basename $0 old-pattern new-pattern filename"
	exit $E_BADARGS  # exit with this error code.
fi

old_pattern=$1
new_pattern=$2

if [ -f "$3" ]	# -f checks if the given name is a filename, if not finds similar patterns of file names in the directory.
then 
	file_name=$3
else
	echo "File \"$3\" does not exist."
	exit $E_BADARGS
fi

#--- now the time to do actual work:
sed -e "s/$old_pattern/$new_pattern/g" $file_name

# g is global flag causes to change each occurance of the pattern.
# should read sed documnetation.