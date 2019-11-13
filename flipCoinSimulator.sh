
#!/bin/bash -x

declare -A  storeflip
echo "welcome"
tail=0
head=0
read -p "Enter the number of flips: " flip
read -p "Enter the Combination of flips: " coin
 function  flipcoin()
 {
    
        for (( i=1; i<=$flip; i++ ))
	do
	str=""
		for(( j=0; j<$coin; j++ ))
 		do
    		    result=$(( RANDOM % 2 ))

      		       if [ $result -eq 0 ]
			then
   			  str=$str"T"
           		  tail=$(( $tail + 1 ))
                         else
                           str=$str"H"
                           head=$(( $head + 1))
			fi
                  done
                
                storeflip["$str"]=$(( ${storeflip["$str"]} + 1 ))  

  done
  }
  flipcoin
  echo ${!storeflip[@]}
  echo ${storeflip[@]}
 MaxValueCoin=$( printf "%s\n" ${!storeflip[@]} ${storeflip[@]} | sort -nr | head -1 )
 percentofMaximumCoin=$(( $MaxValueCoin * 100 / $flip ))
echo $percentofMaximumCoin
 
 

