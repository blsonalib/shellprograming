
#!/bin/bash -x
declare -A  storeflip
count=0
head=0
tail=0
read -p "Enter Second number: " flip
while [ $count -lt $flip ]
do
    number=$((RANDOM%2))
     if [ $number -eq 0 ]
     then
        ((tail++))
         
     else
       ((head++))

        
     fi
((count++))     
done
     echo "number of heads is" $tail
     echo "number of tails is" $head
     storeflip[Heads]=$head
     storeflip[Tails]=$tail
     headsNumber=$(( $head * 100 ))
     percentOfHead=$(( $headsNumber / $flip ))
     tailsNumber=$(( $tail * 100 ))
     numberOfTails=$(( $headsNumber - $tailsNumber ))
     percentOfTail=$(( $numberOfTails / $flip ))
     
    
