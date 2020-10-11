#!/bin/bash -x
echo "welcome to prime simultion"

checkprime ( ) {

count=0
i=2

for (( count=2; count<=$(($1+1)); i++ ))
do
flag=0
	for (( j=2; j<$i; j++ ))
	do
		if [ $(($i%$j)) -eq 0 ]
		then
			flag=1
		fi
	done

if [ $flag -eq 0 ]
then
	echo $i
	array[$count]=$i
	count=$(($count+1))

fi

done
echo "array of prime numbers are:" ${array[@]}

}

alternateprimenumbers ( ) {
counter=0
echo "alternate prime numbers are:"

for (( i=0; i<$((${#array[@]}+1)); i+=2 ))
do
        alternateprime[counter]=${array[$i]}
	counter=$(($counter+1))
done
echo ${alternateprime[@]}
reversenumber
}
