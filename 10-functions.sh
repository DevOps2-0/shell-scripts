#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "Error:: Please run this script with root access"
    exit 1
fi


VALIDATE(){

if [ $1 -ne 0 ]
then
    echo "Error:: $2... is failed"
else:
    echo "Success:: $2... is Success"
fi

}

yum install mysql -y

VALIDATE $? "Installing MySQL"

yum install git -y

VALIDATE $? "Installing GIT"

