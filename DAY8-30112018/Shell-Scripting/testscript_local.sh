#This script rpints the directory/files list from one system and from another system

#this script is run on *****local machine*****
#!/bin/bash
#Printing my system information
echo "----- My Machine information----------"
echo "---- My machine name ------"
uname -n
echo "-----My machine directory structure----"
ls -l ~/.
echo "Printing the Present working directory...."
pwd
#echo "printing...."
#ls -l
echo "-------------------------------------------"
echo "------Printing remote host information-----------"
#pwd #This line is added for debugging purpose only

#pwd #This line is added for debugging purpose only
ssh -i "SSH-Check.pem" ec2-user@13.127.26.48 'bash' < testscript_remote.sh
#`./testscript.sh`
