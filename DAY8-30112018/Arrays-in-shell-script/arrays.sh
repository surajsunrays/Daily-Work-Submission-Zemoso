#This shell script shows operations related to arrays
#! /bin/bash

#Declaring Arrays
echo "Creating arrays with elements (apple mango banana orange pineapple)"
fruits=(apple mango banana orange pineapple)

#Printing all array elements
echo "-------------------------------------------------"
echo "Printing all elements of array"
echo "${fruits[@]}"
echo "-------------------------------------------------"

#Adding new elements in array
fruits[5]="grapes"
echo "Display arrays after grapes addition"
echo "${fruits[@]}"
echo "-------------------------------------------------"

#Removing the first array element
unset fruits[0]
echo "displaying array after removing apple"
echo "${fruits[@]}"
echo "-------------------------------------------------"
#Updating array element at specified position
echo "Updating array element at specified position" 
fruits[0]="apple"
echo "${fruits[@]}"
echo "-------------------------------------------------"
#displaying particular array elements
echo "display 3rd array element"
echo "${fruits[2]}"
echo "-------------------------------------------------"
#Display length of array
echo "Displaying the length of an array"
echo "${#fruits[@]}"
echo "--------------------------------------------------"
#Displaying array elements using offset and length
echo "displaying array using offset 2 and length 3"
echo "${fruits[@]:2:3}"
echo "--------------------------------------------------"
#Searching and replacing
echo "Replacing grapes with straberry"
echo "${fruits[@]/grapes/straberry}"
echo "--------------------------------------------------"
#Copying one array to another array
echo "Copying whole fruit array to favourite array"
fav=("${fruits[@]}")
echo "Displaying fav array----"
echo "${fav[@]}"
echo "---------------------------------------------------"
#Concatenating two different
echo "Here we joining two different arrays"
echo "linux array contains elements(ubuntu,centos,fedora,kali,mint,redhat)"
echo "--------------------------------------------------------------"
echo "windows array contains elements(winXP WinNT WinServer Win7 Win8 Win10 )"
linux=(ubuntu centos fedora kali mint redhat)
windows=(winXP WinNT WinServer Win7 Win8 Win10)
echo "displaying concatenated array"
linwin=("${linux[@]}" "${windows[@]}")
echo "${linwin[@]}"
