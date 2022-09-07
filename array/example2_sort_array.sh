for((i=0; i<10; i++))
do
	ar[i]=$((RANDOM%1000))
done

echo "array : " ${ar[@]}

# sort array

for (( i=0; i<${#ar[@]}; i++ ))
do
	for (( j=0; j<$(( ${#ar[@]}-$i-1)); j++ ))	
	do
		if [ ${ar[j]} -gt ${ar[ (($j+1)) ]} ]
		then
			temp=${ar[j]}
			ar[j]=${ar[$(($j+1))]}
			ar[$(($j+1))]=$temp
		fi
	done
done

echo "sorted array : " ${ar[@]}
