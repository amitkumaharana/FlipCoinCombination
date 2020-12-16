#!/bin/bash
declare -A dict1
declare -A dict2
declare -A dict3
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
if [ $percent_head -gt $percent_tail ]
then
	echo HEAD wins
elif [ $percent_tail -gt $percent_head ]
then
	echo TAIL wins
else
	echo It is a TIE
fi
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
echo "Percentage for hh is $percent_hh"
echo "Percentage for ht is $percent_ht"
echo "Percentage for tt is $percent_tt"
echo "Percentage for th is $percent_th"
if [ $percent_hh -gt $percent_ht ]
then
	if [ $percent_hh -gt $percent_tt ]
	then
		if [ $percent_hh -gt $percent_th ]
		then
			echo hh Combination wins
		else
			echo th Combination wins
		fi
	else
		if [ $percent_tt -gt $percent_th ]
		then
			echo tt Combination wins
		else
			echo th Combination wins
		fi
	fi
else
	if [ $percent_ht -gt $percent_tt ]
	then
		if [ $percent_ht -gt $percent_th ]
		then
			echo ht Combination wins
		else
			echo th Combination wins
		fi
	else
		if [ $percent_tt -gt $percent_th ]
		then
			echo tt Combination wins
		else
			echo th Combination wins
		fi
	fi
fi
hhh=0
hht=0
htt=0
ttt=0
tth=0
thh=0
tht=0
hth=0
for((i=0;i<20;i++))
do
        flip1=$((RANDOM%2))
        flip2=$((RANDOM%2))
	flip3=$((RANDOM%2))
        if [ $flip1 -eq 0 ] && [ $flip2 -eq 0 ] && [ $flip3 -eq 0 ]
        then
                hhh=$((hhh+1))
        elif [ $flip1 -eq 0 ] && [ $flip2 -eq 0 ] && [ $flip3 -eq 1 ]
        then
                hht=$((hht+1))
        elif [ $flip1 -eq 0 ] && [ $flip2 -eq 1 ] && [ $flip3 -eq 1 ]
        then
                htt=$((htt+1))
        elif [ $flip1 -eq 1 ] && [ $flip2 -eq 1 ] && [ $flip3 -eq 1 ]
        then
                ttt=$((ttt+1))
        elif [ $flip1 -eq 1 ] && [ $flip2 -eq 1 ] && [ $flip3 -eq 0 ]
	then
		tth=$((tth+1))
	elif [ $flip1 -eq 1 ] && [ $flip2 -eq 0 ] && [ $flip3 -eq 0 ]
	then
		thh=$((thh+1))
	elif [ $flip1 -eq 1 ] && [ $flip2 -eq 0 ] && [ $flip3 -eq 1 ]
	then
		tht=$((tht+1))
	elif [ $flip1 -eq 0 ] && [ $flip2 -eq 1 ] && [ $flip3 -eq 0 ]
	then
		hth=$((hth+1))
	fi
done
dict3[hhh]=$hhh
dict3[hht]=$hht
dict3[htt]=$htt
dict3[ttt]=$ttt
dict3[tth]=$tth
dict3[thh]=$thh
dict3[tht]=$tht
dict3[hth]=$hth
percent_hhh=`awk 'BEGIN{print '$hhh'*'100'/'20'}'`
percent_hht=`awk 'BEGIN{print '$hht'*'100'/'20'}'`
percent_htt=`awk 'BEGIN{print '$htt'*'100'/'20'}'`
percent_ttt=`awk 'BEGIN{print '$ttt'*'100'/'20'}'`
percent_tth=`awk 'BEGIN{print '$tth'*'100'/'20'}'`
percent_thh=`awk 'BEGIN{print '$thh'*'100'/'20'}'`
percent_tht=`awk 'BEGIN{print '$tht'*'100'/'20'}'`
percent_hth=`awk 'BEGIN{print '$hth'*'100'/'20'}'`
echo ${dict3[@]}
echo ${!dict3[@]}
echo "Percentage for hhh is $percent_hhh"
echo "Percentage for hht is $percent_hht"
echo "Percentage for htt is $percent_htt"
echo "Percentage for ttt is $percent_ttt"
echo "Percentage for tth is $percent_tth"
echo "Percentage for thh is $percent_thh"
echo "Percentage for tht is $percent_tht"
echo "Percentage for hth is $percent_hth"
array[0]=${dict3[hhh]}
array[1]=${dict3[hht]}
array[2]=${dict3[htt]}
array[3]=${dict3[ttt]}
array[4]=${dict3[tth]}
array[5]=${dict3[thh]}
array[6]=${dict3[tht]}
array[7]=${dict3[hth]}
for((i=0;i<8;i++))
do
        for((j=$i+1;j<8;j++))
        do
                b=${array[i]}
                c=${array[j]}
                if [ $b -ge $c ]
                then
                        array[i]=$c
                        array[j]=$b
                fi
        done
done
a=${dict3[hhh]}
b=${dict3[hht]}
c=${dict3[htt]}
d=${dict3[ttt]}
e=${dict3[tth]}
f=${dict3[thh]}
g=${dict3[tht]}
h=${dict3[hth]}
big=${array[7]}
if [ $big -eq $a ]
then
	echo hhh Combination wins
elif [ $big -eq $b ]
then
	echo hht Combination wins
elif [ $big -eq $c ]
then
        echo htt Combination wins
elif [ $big -eq $d ]
then
        echo ttt Combination wins
elif [ $big -eq $e ]
then
        echo tth Combination wins
elif [ $big -eq $f ]
then
        echo thh Combination wins
elif [ $big -eq $g ]
then
        echo tht Combination wins
elif [ $big -eq $h ]
then
        echo hth Combination wins
fi

