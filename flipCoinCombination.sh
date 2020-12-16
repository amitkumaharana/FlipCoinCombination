#!/bin/bash
declare -A dict
echo "Welcome to the Flip Coin Simulation Program"
count_head=0
count_tail=0
for((i=0;i<20;i++))
do
	flip=$((RANDOM%2))
	if [ $flip -eq 0 ]
	then
		count_head=$((count_head+1))
	else
		count_tail=$((count_tail+1))
	fi
done
dict[count_head]=$count_head
dict[count_tail]=$count_tail
percent_head=`awk 'BEGIN{print '$count_head'*'100'/'20'}'`
percent_tail=`awk 'BEGIN{print '$count_tail'*'100'/'20'}'`
echo ${dict[@]}
echo "Percentage for HEAD is $percent_head"
echo "Percentage for TAIL is $percent_tail"
