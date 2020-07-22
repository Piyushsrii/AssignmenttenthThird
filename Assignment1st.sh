Welcome in third assignment

#!/bin/bash -x
randomvar=$((RANDOM%2))
if [[ $randomvar == 1 ]]
then
echo "Head coin"
else
echo "Tail coin"
fi
