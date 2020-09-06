#!/bin/bash

echo -n "enter the symbol"
read symbol

while [ 1 ]; do
echo -n "enter the height (3-30)"
read height

if [ $height -lt 3 -o $height -gt 30 ]; then
echo "error"
continue
else
break
fi
done

space=$((height-1))
count=1
while [ $count -lt $height ]; do
for ((a=$space; a>0; a--)); do
echo -n " "
done
((space--))
for ((b=0; b<$count; b++)); do
echo -n "$symbol"
done
echo ""
((count++))

done
