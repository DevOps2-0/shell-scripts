#!/bin/bash

ID=$(id -u)

if [ $id -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1
else
    echo "You are the root user"
fi

# yum install mysql -y