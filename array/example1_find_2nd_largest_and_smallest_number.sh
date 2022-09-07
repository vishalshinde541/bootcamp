for((i=0; i<10; i++))
do
	ar[i]=$((RANDOM%1000))
done

echo "array : " ${ar[@]}

largest=${ar[0]}
secondLargest=0

for((i=0; i<${#ar[@]}; i++))
do
	if [ ${ar[i]} -gt $largest ]
	then 
			secondLargest=$largest
			largest=${ar[i]}

	elif [ $secondLargest -eq 0 ] && [ ${ar[i]} != $largest ]
	then secondLargest=${ar[i]}

	elif [ ${ar[i]} -gt $secondLargest ] && [ ${ar[i]} != $largest ]
	then secondLargest=${ar[i]}
	fi
done

echo "largest : " $largest
echo "secondLargest : " $secondLargest

smallest=${ar[0]}
secondSmallest=0

for((i=0; i<${#ar[@]}; i++))
do
        if [ ${ar[i]} -lt $smallest ]
        then 
                        secondSmallest=$smallest
                        smallest=${ar[i]}

        elif [ $secondSmallest -eq 0 ] && [ ${ar[i]} != $smallest ]
        then secondSmallest=${ar[i]}

        elif [ ${ar[i]} -lt $secondSmallest ] && [ ${ar[i]} != $smallest ]
        then secondSmallest=${ar[i]}
        fi
done

echo "smallest : " $smallest
echo "secondSmallest : " $secondSmallest
