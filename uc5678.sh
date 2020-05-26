#!/bin/bash -x

function check()
{
        i=$1
        j=$2
        if [[ $i =~ $j ]]
        then
                echo Saved
        else
                echo Invalid Input
        fi
}
name="^[A-Z][A-Za-z0-9]{2,}$"
email="^[0-9a-zA-Z]+[.]*[0-9a-zA-z]*[@][a-zA-Z]+([.][a-zA-Z]+){1,2}$"
pno="^[0-9]{2}[ ][0-9]{10}$"
pass="^[a-z(A-Z)+(0-9)+(!@#$&+=*/_%^~){1}]{8,}$"
echo -e "Enter your valid First name \n:- First name should start with Cap and has minimum 3 characters"
read fname
check $fname $name
echo -e "Enter your valid Last name \n:- Last name should start with Cap and has minimum 3 characters"
read lname
check $lname $name
read -p "Enter your valid email Id  " eId
check $eId $email
echo "Enter your valid mobile number as Country code followd by space and 10 digit number "
read num
check "$num" "$pno"
echo -e "Enter the password and fallow the rules: \n1: minimum 8 Characters \n2: Should have at least 1 Upper Case \n3: Should have at least 1 numeric number in the password \n4: Has exactly 1 Special Character"read password
check $password $pass
