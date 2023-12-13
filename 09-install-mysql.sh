#!/bin/bash

ID=$(id -u)

if [ $id -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
else
    echo "You are the root user"
fi

# yum install mysql -y