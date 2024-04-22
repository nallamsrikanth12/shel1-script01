#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "you are not a super user"
else
    echo "you are super user"
fi

for i in $@
do
  echo "package to install: $i"
  dnf list installed $i
  if [ $? -eq 0 ]
  then
    echo "$i already installed ...skkippig"
  else
    echo "$1 not installed..need to install"  
  fi   
done 