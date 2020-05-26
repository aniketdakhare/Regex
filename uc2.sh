#!/bin/bash -x

echo -e "Enter your valid First name \n:- First name should start with Cap and has minimum 3 characters"
read fname
echo -e "Enter your valid Last name \n:- Last name should start with Cap and has minimum 3 characters"
read lname

pat="^[A-Z][A-Za-z0-9]{2,}$"
function name()
{
	i=$1
	if [[ $i =~ $pat ]]
	then
        	echo Name is saved
	else
        	echo Invalid name
	fi
}
name $fname
name $lname
