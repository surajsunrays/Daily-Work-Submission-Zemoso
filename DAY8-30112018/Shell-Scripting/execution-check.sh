#This script will check the execution of previously executed command
#!/bin/sh

if [ "$?" -ne "0" ]; then
  echo "Sorry, Something goes wrong earlier"
else
    echo "Fine, Earlier command OK  "
fi