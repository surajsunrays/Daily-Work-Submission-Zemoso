#Shell script for case demo
#! /bin/bash
echo "please talk to me"

while :
do
    read input
        case $input in
        hello)  echo "Hello,Hi.." ;;
        bye)    echo "See you..."
                break
                ;;
        *)  echo "Sorry,not understood" ;;
        esac 
done
echo ""
