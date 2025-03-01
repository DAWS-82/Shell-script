#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
   echo "ERROR:: you must have sudo access to execute this script"
   exit 1 #other than 0
fi

dnf list installed mysql

if [ $? -ne 0 ] #not installed
then
   dnf install mysql -y
   if [ $? -ne 0 ]
   then
      echo "Installing MYSQL...FAILURE"
      exit 1
   else
      echo "Installing MYSQL...SUCCESS"
   fi
else
   echo "MYSQL is alreay...INSTALLED"
fi


# dnf install mysql -y

# if [ $? -ne 0 ]
# then
#    echo "Installing MYSQL...FAILURE"
#    exit 1
# else
#    echo "Installing MYSQL...SUCCESS"
# fi

dnf list installed git

if [ $? -ne 0 ]
then
   dnf install git -y
   if [ $? -ne 0 ]
   then
      echo "Installing Git...FAILURE"
      exit 1
   else
      echo "Installing Git...SUCCESS"
   fi
else
   echo "Git is already...INSTALLED"
fi


# dnf install git -y

# if [ $? -ne 0 ]
# then
#    echo "Installing Git...FAILURE"
#    exit 1
# else
#    echo "Installing Git...SUCCESS"
# fi
  
