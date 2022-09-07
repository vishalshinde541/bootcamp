count=0
fruits[((count++))]="banana"
fruits[((count++))]="apple" 
fruits[((count++))]="orange"
#echo ${fruits[@]}
#echo ${fruits[1]}

i=2
echo ${fruits[$i]}
