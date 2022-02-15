#!/bin/bash

flag=0
result=0

while true
do
        read -p "Would you like to go on [Y/N]: " response
        if [[ $response =~ ^[Yy]$ ]]
	then
		clear
		if [[ $flag == 0 ]]
		then
				read -p "Please put in the numbers: " user_input
				echo ""
		fi
		echo "Current value is $result"
		echo ""
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

		while true
		do
			read -p "Please put in the second numbers: " user_second_input
			if [[ $user_operation == '/' ]] && [[ $user_second_input == 0 ]]; then
				echo "Zero division Error"
				sleep 1
				clear
			else
				break
			fi
		done

		if [[ $flag == 0 ]]
		then
				result=$(($user_input $user_operation $user_second_input))
				echo "result: $result"
		else
				result=$(($result $user_operation $user_second_input))
				echo "result: $result"
		fi
		flag=1
	elif [[ $response =~ ^[Nn]$ ]]
	then
		echo "result: $result"
		break
	else
		echo "Please add the correct value."
		sleep 2
		clear
	fi
done
