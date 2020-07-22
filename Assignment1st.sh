Welcome in third assignment

#!/bin/bash -x      UserCase1----->1
randomvar=$((RANDOM%2))
if [[ $randomvar == 1 ]]
then
echo "Head coin"
else
echo "Tail coin"
fi

#!/bin/bash -x           UserCase------>2
read -p "Enter the coin fliping time : " flipTime
i=1
countH=0
countT=0
declare -A flipCoinDict
declare -A flipCoinDict1
while [ $i -ne $flipTime ]
do
          randomTime=$(( (RANDOM%2)+1 ))
          case $randomTime in

          1)
                  flipCoinDict[$i]="H"
                  ((countH++))
                      ;;
          2)
                  flipCoinDict[$i]="T"
                  ((countT++))
                         ;;
          *)
                   echo "No value is pending"
                        ;;
                     esac
          ((i++))
done
dupletHPer=`echo $countH $flipTime | awk -F" " '{ a=$1; b=$2; res1=(a/b*100); print res1 }'`
dupletTPer=`echo $countT $flipTime | awk -F" " '{ a=$1; b=$2; res1=(a/b*100); print res1 }'`
count=0
arr[((count++))]=$((dupletHPer))
arr[((count++))]=$((dupletTPer))
echo ${arr[@]}

