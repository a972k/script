#!/bin/bash 

read -p "what is your birth_year?" birth_year 
current_year=$(date +%Y)
age=$((current_year - birth_year))
read -p "you are $age years old, is this correct? (yes/no) " response
if [[ "$response" == "yes" ]]; then
  echo "congrats on you being $age years old, wishing you many more great years ahead!"
else
  echo "oops! maybe there's a mistake, please try again" 
fi 


