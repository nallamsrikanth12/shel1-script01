#!/bin/bash

USERID=$(id -u)

VALIDATE(){
if [ $1 -ne 0 ]
then
    echo "$2 is failure"
else
    echo "$2 is sucuess"
fi
}


if [ $USERID -ne 0 ]
then
    echo"u are not super user"
else
    echo "u are a super user"
fi


dnf install mysql -y
VALIDATE $? "installing mysql sucuessfully"


dnf install git -y
VALIDATE $? "installing git sucuessfully



