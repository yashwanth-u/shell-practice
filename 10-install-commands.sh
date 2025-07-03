#!/bin/bash

USERID=$(id -u)

IF [ $USERID -ne 0 ]
then
    echo "You must be root to run this script."
    exit 1
else
    echo "You are root, proceeding with installation commands."
fi

dnf install mysql -y