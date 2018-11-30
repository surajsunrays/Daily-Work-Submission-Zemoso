#This script is create files according to user input using function
#! /bin/bash
test_func()
{
    file1=$1
    value=$#
    if [ $value -eq "0" ]
    then
        echo "No Name supplied for file, File Not Created"
    else
        echo "File Created"
        touch $file1
    fi
}

echo "Script Starting"
echo "Please enter name for the file...:"
read filename
test_func $filename
echo "Script Exiting"