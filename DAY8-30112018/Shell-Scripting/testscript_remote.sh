#This script rpints the directory/files list from one system and from another system

#!/bin/bash
#Printing Remote system information
echo "----- Remote Machine information----------"
echo "---- Remote machine name ------"
uname -n
echo "-----Remote machine directory structure----"
cd ~/.
echo "Printing the Present working directory...."
pwd
echo "printing...."
ls -l
echo "-------------------------------------------"

