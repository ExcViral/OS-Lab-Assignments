#! /Bin/Bash
echo "this script uses sieve of eratosthenes to print the list of primes"

echo "enter the upper limit of the list"
read n

for((i=2; i<=n; i++))
    do
        list[(($i-2))]=$i
    done
    
echo "the list of primes before "$n" are : " 
for((i=2; i<=n; i++))
    do
        for((j=(($i+1)); j<=n; j++))
            do
                
                if(((($j%$i))==0))
                    then
                        list[(($j-2))]=0
                        #echo $j"%"$i=${list[(($j-2))]}"***"
                    fi
            done
    done
    
for((i=0; i<=(($n-2)); i++))
    do
        if((${list[$i]}!=0))
            then
                echo -n ${list[$i]}" "
            fi
    done
    
echo ""    