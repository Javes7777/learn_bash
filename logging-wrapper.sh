#!/bin/bash
# for logging shit
# it basically performs an option and logs it.

DEFAULT_LOGFILE=logfile.txt

OPERATION=
#         Can be a complex chain of commands,
#      for example an awk script or a pipe 

LOGFILE=
if [ -z "$LOGFILE" ]
then     # If not set, default to ...
  LOGFILE="$DEFAULT_LOGFILE"
fi

#         Command-line arguments, if any, for the operation.
OPTIONS="$@"


# Log it.
echo "`date` + $USER + $OPERATION "$@"" >> $LOGFILE
#      date and username, then operation into logfile.
# Now, do it.
exec $OPERATION "$@"

# It's necessary to do the logging before the operation.
# Why? 
# maybe if the process/operation gets killed and then we can trace back in the log file.