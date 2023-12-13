#!/bin/bash

ID=$(id -u)


if [ $ID -ne 0 ]
then
    echo "Error:: Please run this script with root access"
    exit 1
else
    echo "You are the root user"
fi

yum install mysql -y

if [ $? -ne 0 ]
then
    echo "Error:: MySQL installation failed"
else:
    echo "Success:: MySQl Installation Success"
fi

yum install git -y

if [ $? -ne 0 ]
then
    echo "Error:: GIT Installation failed"
else
    echo "Success:: GIT Installation success"
fi