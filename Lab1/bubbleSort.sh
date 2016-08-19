#! /bin/bash
echo "this program implements Bubble Sort algorithm"
echo "enter the length of list"
read n
echo "now enter the numbers one by one"
for((i=0; i<$n; i++))
    do
        read list[$i]
    done
    
for (( i=0; i < $n ; i++ ))
    do
        for (( j=$i; j<$n; j++ ))
            do
                if [ ${list[$i]} -gt ${list[$j]}  ]; then
                t=${list[$i]}
                list[$i]=${list[$j]}
                list[$j]=$t
            fi
    done
done


echo "the sorted list is : "
for((i=0; i<n; i++))
    do
        echo -n ${list[$i]}" "
    done

echo ""