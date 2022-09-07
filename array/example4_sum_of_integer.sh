total=0

for ((i=0; i<3; i++))
do 
	ar[i]=$((RANDOM%100))
	total=$(($total+${ar[i]}))

done

echo "Array : " ${ar[@]}
echo "sum : " $total
