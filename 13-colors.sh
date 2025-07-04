#!/bin/bash

USERID=$(id -u)
R="/e[31m"
G="/e[32m"
Y="/e[33m"
N="/e[0m"

if [ $USERID -ne 0 ]
then
    echo "$R ERROR:: Please run this script with root access $N"
    exit 1 #give other than 0 upto 127
else
    echo "You are running with root access"
fi

VALIDATE() {
    if [ $1 -eq 0 ] # $1 = $? -eq 0 means success
    then
        echo "Installing $2 is ... $G SUCCESS $N" # $2 is name of the package
    else
        echo "Installing $2 is ... $R FAILURE $N"
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
    echo "Nothing to do MySQL... $Y already installed $N"
fi

dnf list installed python3
if [ $? -ne 0 ]
then
    echo "python3 is not installed... going to install it"
    dnf install python3 -y
    VALIDATE $? "python3"
else
    echo "Nothing to do python3... $Y already installed $N"
fi
 
dnf list installed nginx
if [ $? -ne 0 ]
then
    echo "nginx is not installed... going to install it"
    dnf install nginx -y
    VALIDATE $? "nginx"
else
    echo "Nothing to do nginx... $Y already installed $N"
fi