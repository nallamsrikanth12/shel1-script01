USERID=$(id -u)
TIMESTAND=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo "$0 | cut -d "." -f1" )
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAND.log

VALIDATE(){
if [ $1 -ne 0 ]
then
    echo "$2 :: is failure"
else
    echo "$2 :: is success"
fi
}


if [ $USERID -ne 0 ]
then 
    echo "you are not super user"
else
    echo "you are super user"
fi


dnf install mysql -y
VALIDATE $? "mysql is installing success"

dnf install git -y
VALIDATE $? "git is also installing success"
       