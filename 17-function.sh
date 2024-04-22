#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
N="\e[0m"
P="\e[34m"

VALIDATE(){
if [ $? -ne 0 ]
then
    echo -e "$2...$R FAILURE $N"
else 
    echo -e "$2 ...$G success $N"
fi
}

if [ $USERID -ne 0 ]
then
    echo "you are not super user"
    exit 1
else
    echo "you are super user"
fi

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "installed"

dnf install git - &>>$LOGFILE
VALIDATE $? "installed"

dnf  install docker -y &>>$LOGFILE
VALIDATE $? "installed" 

echo -e  "$P NALLAM SRIKANTH $N"