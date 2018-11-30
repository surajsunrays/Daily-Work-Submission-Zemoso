#This shell script will run until you press ^C
#!/bin/sh
while : #it will true forever
do
  echo "Please type something in (^C to quit)"
  read INPUT_STRING
  echo "You typed: $INPUT_STRING"
done