#!/bin/bash
# pyhton script embedded in bash script

# shell commands may precede python script
echo "This precedes the embedded Python script within \"$0.\""
echo "==============================================================="

python3 -c 'print("This line prints from an embedded Python script.\n");'
# Unlike sed and perl, Python uses the "-c" option.
python3 -c 'k = input( "Hit a key to exit to outer script. " )'

echo "==============================================================="
echo "However, the script may also contain shell and system commands."

exit 0