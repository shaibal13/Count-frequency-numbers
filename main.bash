#                             Online Bash Shell.
#                 Code, Compile, Run and Debug Bash script online.
# Write your code in this editor and press "Run" button to execute it.

declare -a frequency
declare -i lastdigit
declare -i n=0
declare -i zeroForTest=0
declare -i count=0
read -p "Enter your number : " number

for((i=0;i<=9;i++))
do
    frequency[$i]=0
done
n=$number
while [[ $n != [0] ]]

do
       lastdigit=$((n % 10))
    
     
      n=$((n / 10))
    
      frequency[$lastdigit]=$((frequency[$lastdigit] + 1)) 
     
done
for j in ${frequency[*]}; do
    if [ $j != $zeroForTest ]
  then
  
  echo $count "=" $j "Times"
   fi
  count=$(( count + 1))
done
