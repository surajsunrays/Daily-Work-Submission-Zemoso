#This script checks that the user input is number or not
#!/bin/bash

echo "Enter Number :"
read n
echo $n | grep "[^0-9]" #This will return the execution value of the command (0-success,1-Failure)
if [ "$?" -eq "0" ]
then
    echo "Sorry,not a number"
else
    echo "Thank You,Its a Number"
fi