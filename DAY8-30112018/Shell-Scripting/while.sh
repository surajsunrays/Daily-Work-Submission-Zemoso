#this shell script show execution flow of while loop.
#!/bin/sh
input=hello
while [ "$input" != "bye" ]
do
  echo "Please type something in (bye to quit)"
  read input
  echo "You typed: $input"
done