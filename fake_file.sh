#!/bin/bash 

#code=$?
#if [[ $code -eq 0 ]]; then 
#	echo "worked"
#else 
#	echo "failed"
#fi  

if [ "$#" -lt 2 ]; then 
echo "usege: $0 arie.txt cat arie.txt
exit 1 
fi

filename="$1"
search_text="$2"

#check if file exists without file operator 
if ls | grep -Fxq "$filename$"; then 
	echo "file '$filename' exists."

	#check if text is inside the file 
	if grep -Fq "$search_text" "$filename"; then 
	echo "the text '$search_text' is found in '$filename'."
	else 	
	echo "the text '$search_text' wasnt foyund in '$filename' "	
	fi 
else	
	echo "file '$filename' doesnt exist."
fi  
