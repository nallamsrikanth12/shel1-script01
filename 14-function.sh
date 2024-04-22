#!/bin/bash
USERID=$(id -u)

VALIDATE(){
    echo "install mysql : $1"
    echo "install git   : $2"
}


if [ $USERID -ne 0 ]
then
    echo "you are not super user"
    exit 1
else 
    echo " you are a super user"
fi


dnf install mysql -y
VALIDATE $? "sucuessfully"

dnf install git -y 
VALIDATE $? "sucuessfully"