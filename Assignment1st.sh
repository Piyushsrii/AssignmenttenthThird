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

#!/bin/bash -x            UserCase------->3
read -p "Enter the coin fliping time : " flipTime
i=1
countHH=0
countHT=0
countTH=0
countTT=0
sorting=0;
declare -A flipCoinDict
declare -A sorting
while [ $i -ne $flipTime ]
do
          randomTime=$(( (RANDOM%4)+1 ))
          case $randomTime in

          1)
                  flipCoinDict[$i]="HH"
                  ((countHH++))
                      ;;
          2)
                  flipCoinDict[$i]="HT"
                  ((countHT++))
                         ;;
          3)
                  flipCoinDict[$i]="TT"
                  ((countTT++))
                      ;;
          4)
                  flipCoinDict[$i]="TH"
                  ((countHH++))
                       ;;
          *)
                   echo "No value is pending"
                        ;;
                     esac
          ((i++))
done
dupletHHPer=`echo $countHH $flipTime | awk -F" " '{ a=$1; b=$2; res1=(a/b*100); print res1 }'`
dupletHTPer=`echo $countHT $flipTime | awk -F" " '{ a=$1; b=$2; res1=(a/b*100); print res1 }'`
dupletTTPer=`echo $countTT $flipTime | awk -F" " '{ a=$1; b=$2; res1=(a/b*100); print res1 }'`
dupletTHPer=`echo $countTH $flipTime | awk -F" " '{ a=$1; b=$2; res1=(a/b*100); print res1 }'`
count=0
arr[((count++))]=$((dupletHHPer))
arr[((count++))]=$((dupletHTPer))
arr[((count++))]=$((dupletTTPer))
arr[((count++))]=$((dupletTHPer))
echo ${arr[@]}
