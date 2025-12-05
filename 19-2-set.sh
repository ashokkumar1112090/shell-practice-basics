#!/bin/bash
set -e 

# error(){
#     echo "There is an error in $LINENO, Command is: $BASH_COMMAND" 
# }

trap 'echo "There is an error in $LINENO, Command is: $BASH_COMMAND"' ERR #lineno bashcmd are spec var
#to know the error occured in which line or which cmd we use
#There is an error in 15,Command is: ccaffjl like this result appears

echo "Hello.."
echo "Before error.."
ccaffjl;dnf # here shell understands there is an error and signal is ERR
echo "After error"