#!/bin/bash
echo "do you want some fruit?"
cat<<-FRUIT
	1)apple
	2)orange
FRUIT
	echo "input select"
read x
case ${x} in  # pay attention!! {} rather than ()
1)
	echo "red, you want apple"
;;
2)
	echo "orange, you want orange"
;;
*)
	echo "eh...nothing selected"
;;
esac
	echo "welcome!!"