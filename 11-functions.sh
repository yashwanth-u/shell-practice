#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1 #give other than 0 upto 127
else
    echo "You are running with root access"
fi

VALIDATE() {
    if [ $1 -eq 0 ] # $1 = $? -eq 0 means success
    then
        echo "Installing $2 is ... SUCCESS" # $2 is name of the package
    else
        echo "Installing $2 is ... FAILURE"
        exit 1
    fi
}  
dnf list installed mysql
if [ $? -ne 0 ]
then
    echo "MySQL is not installed... going to install it"
    dnf install mysql -y
    VALIDATE $? "MYSQL"
else
    echo "MySQL is already installed...Nothing to do"
fi

dnf list installed python3
if [ $? -ne 0 ]
then
    echo "python3 is not installed... going to install it"
    dnf install python3 -y
    VALIDATE $? "MYSQL"
else
    echo "python3 is already installed...Nothing to do"
fi

dnf list installed nginx
if [ $? -ne 0 ]
then
    echo "nginx is not installed... going to install it"
    dnf install nginx -y
    VALIDATE $? "MYSQL"
else
    echo "nginx is already installed...Nothing to do"
fi