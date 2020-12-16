#!/bin/bash
declare -A dict1
declare -A dict2
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
dict1[count_head]=$count_head
dict1[count_tail]=$count_tail
percent_head=`awk 'BEGIN{print '$count_head'*'100'/'20'}'`
percent_tail=`awk 'BEGIN{print '$count_tail'*'100'/'20'}'`
echo ${dict1[@]}
echo ${!dict1[@]}
echo "Percentage for HEAD is $percent_head"
echo "Percentage for TAIL is $percent_tail"
hh=0
ht=0
tt=0
th=0
for((i=0;i<20;i++))
do
        flip1=$((RANDOM%2))
	flip2=$((RANDOM%2))
        if [ $flip1 -eq 0 ] && [ $flip2 -eq 0 ]
        then
                hh=$((hh+1))
        elif [ $flip1 -eq 0 ] && [ $flip2 -eq 1 ]
	then
                ht=$((ht+1))
        elif [ $flip1 -eq 1 ] && [ $flip2 -eq 1 ]
	then
		tt=$((tt+1))
	elif [ $flip1 -eq 1 ] && [ $flip2 -eq 0 ]
	then
		th=$((th+1))
	fi
done
dict2[hh]=$hh
dict2[ht]=$ht
dict2[tt]=$tt
dict2[th]=$th
percent_hh=`awk 'BEGIN{print '$hh'*'100'/'20'}'`
percent_ht=`awk 'BEGIN{print '$ht'*'100'/'20'}'`
percent_tt=`awk 'BEGIN{print '$tt'*'100'/'20'}'`
percent_th=`awk 'BEGIN{print '$th'*'100'/'20'}'`
echo ${dict2[@]}
echo ${!dict2[@]}
echo "Percentage for HEAD is $percent_hh"
echo "Percentage for TAIL is $percent_ht"
echo "Percentage for TAIL is $percent_tt"
echo "Percentage for TAIL is $percent_th"

