#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0]
then
    echo "please run this script with acess"
    exit 1
else
    echo "u are super user"   
fi  
