r1=$(($RANDOM%100))
r2=$(($RANDOM%100))
r3=$(($RANDOM%100))
r4=$(($RANDOM%100))
r5=$(($RANDOM%100))

echo "num1 ="$r1", num2 ="$r2", num3 ="$r3", num4 ="$r4", num5 =" $r5

sum=$(($r1+$r2+$r3+$r4+$r5))

echo "sum = " $sum

avg=$(($sum/5))

echo "average = " $avg
