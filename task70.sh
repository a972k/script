#!/bin/bash

read -p "what is your name ?" name 

filename="${name}.txt"
if [[ ! -f "$filename" ]] then
  echo "file $filename does'nt exist."
  touch "$filename"
else 
  echo "file $filename exists."
fi

read -p "what's your age?" age
  
if [[ "$age" -lt 18 ]] then
   echo " to young "
   exit 0
fi 
 
   echo "hi ,$name. you are $age years old. " 
