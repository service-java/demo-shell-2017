#!/bin/bash
echo "input chinese word:"
read x

while [ "${x}" != "China" ] # pay attention to the blank
do
	echo "error! please input again"
	read x # change the stream, stop for a while
done

echo "answer is right"
echo "chinese word is ${x}"