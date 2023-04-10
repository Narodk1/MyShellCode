#!/bin/bash 
echo "this is a simple password generator"
echo "Please enter the lenght of the password: "
read PASS_LENGHT 
for p in  $(seq 1):
do
    openssl rand -base64 48| cut -c1-$PASS_LENGHT
done
 
