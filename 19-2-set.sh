
#!/bin/bash
#to know the error occured in which line or which cmd we use
set -e 

# error(){
#     echo "There is an error in $LINENO, Command is: $BASH_COMMAND"
# }

trap 'echo "There is an error in $LINENO, Command is: $BASH_COMMAND"' ERR

echo "Hello.."
echo "Before error.."
ccaffjl;dnf # here shell understands there is an error and signal is ERR
echo "After error"s