#! /Bin/Bash

echo "This program calculates nth fibonacci number and prints the series before it."

echo "Enter the value of n in fib(n)"
read n

prev=0
curr=1
next=0

echo "fibonacci series : "
if(($n>-1))
    then
        echo -n "0 "
    fi
if(($n>0))
    then
        echo -n "1 "
    fi
if(($n>1))
    then
        for((i=2; i<=$n; i++))
            do
                next=$(($prev+$curr))
                prev=$curr
                curr=$next
                echo -n $curr" "
            done
    fi
    
echo ""
echo "fib("$n") = "$curr