#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%S)
R="\e[31m"
G="\e[32m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "Script started execution at $TIMESTAMP" &>> $LOGFILE

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$R Error:: $2... Failed $N"
        exit 1
    else
        echo -e "$G Success:: $2... Success $N"
    fi
}

if [ $ID -ne 0 ]
then
    echo "Error:: Please run this script with root access"
    exit 1
fi

yum install mysql -y &>>LOGFILE

VALIDATE $? "Installing MySql" 

yum install git -y &>>LOGFILE

VALIDATE $? "Installing GIT" 