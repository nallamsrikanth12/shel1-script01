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
if [ $1 -ne 0 ]
then
  echo -e "$2 $R failure $N"
else
  echo -e "$2  $G success $N" 
fi 
}

if [ $USERID -ne 0 ]
then 
  echo "you are not a super user"

else
  echo "you are super user"
fi

for i in $@
do
  echo "package to install: $i" &>>$LOGFILE
  if [ $? -eq 0 ]
  then
    echo "$i already installed ...skkippig"
  else
    dnf install $i -y &>>$LOGFILE
    VALIDATE  $?  "installating of $i"
  fi   
done 