#Filename: user-group-permission.sh
#!/bin/bash #Bash shell Interpreter

echo "Please Enter the name of file want to create ."
read name
if [ -f $name ]
then
	echo "File already exists"
	echo "exiting....."
	
else
	touch $name
	echo "Congrats.! File Created"
	echo "Showing the file permissions"
	ls -l $name
	echo "Changing the file permissions ."
	echo "Changing file permissions as Read,Write and Execute Permissions for user and Read & Write Permissions for Group and No Permission for Others"
	chmod 760 $name
	echo "Checking file permissions"
	ls -l $name
fi
exit 0
