#!/bin/bash -x

echo -e "Enter your valid First name \n:- First name starts with Cap and has minimum 3 characters"
read fname
pat="^[A-Z][A-Za-z0-9]{2,}$"
if [[ $fname =~ $pat ]]
then
	echo Name is saved
else
	echo Invalid name
fi

