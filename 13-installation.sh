#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "please run this script with acess"
    exit 1
else
    echo "u are super user"   
fi  

dnf install mysql -y

if [ $? -ne 0 ]
then 
    ech0 "installation of mysql failure"
    exit 1
else    
    echo "installation is sucess" 
fi 


dnf install git -y

if [ $? -ne 0 ]
then 
    echo  "git installation is failue"
    exit 1
else
    echo "installation is sucuess"
fi  

dnf installl python -y

if [ $? -ne 0 ]
then
    echo "python is not installed"
    exit 1
else
    echo "python is sucess"
fi  
