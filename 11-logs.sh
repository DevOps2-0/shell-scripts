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
        echo "Error:: $2... $R Failed $N"
        exit 1
    else
        echo "Success:: $2... $G Success $N"
}

yum install mysql -y

VALIDATE $? "Installing MySql" &>>LOGFILE

yum install git -y 

VALIDATE $? "Installing GIT" &>>LOGFILE