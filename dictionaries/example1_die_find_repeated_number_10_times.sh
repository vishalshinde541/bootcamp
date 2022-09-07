flag=1
i=0
counter=0
declare -A result

for((a=0; a<9; a++))
do
	die=$((RANDOM%6+1))
   result[$i]=$die
	i=$(($i+1))
done

while [ $flag -eq 1 ]
do	die=$((RANDOM%6+1))
	result[$i]=$die
i=$(($i+1))
	for((j=0; j<${#result[@]}; j++))
	do
		for((k=0; k<${#result[@]}; k++))
		do
			if [ ${result[$j]} -eq ${result[$k]} ]
			then counter=$(($counter+1))
			fi
		done
		if [ $counter -ge 10 ] 
		then 
			echo "10 times repeated number : " ${result[$j]}
			flag=0
			break
		fi
		counter=0
	done
done
echo "die number dictionary : "${result[@]}
