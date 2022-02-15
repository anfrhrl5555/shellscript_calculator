#!/bin/bash

flag=0
while true
do
	read -p "Would you like to go on [Y/N]: " response
	if [[ $response =~ ^[Yy]$ ]]
		then

			if [[ $flag == 0 ]]
			then
				read -p "Please put in the numbers: " user_input
				echo ""
			fi
			#echo $user_input

			echo "+, -, /, * Please enter one of them."

			read -p "Please put in the operation: " user_operation
			echo ""

			while true; do
				if [[ $user_operation != '+' ]] && [[ $user_operation != '-' ]] && [[ $user_operation != '*' ]] && [[ $user_operation != '/' ]] ; then
					echo -e "Repeat plz"\n
					read -p "Please put in the operation: " user_operation
				else
					#echo $user_operation
					break
				fi
			done

			read -p "Please put in the second numbers: " user_second_input
			echo ""

			#echo "first: ${user_input}"
			#echo "second: ${user_operation}"
			#echo "thrid: ${user_second_input}"
			#echo ""

			#echo $(($user_input $user_operation $user_second_input))
			#echo ""

			if [[ $flag == 0 ]]
			then
				result=$(($user_input $user_operation $user_second_input))
				echo $result
			else
				result=$(($result $user_operation $user_second_input))
				echo $result
			fi
			flag=1
	done



