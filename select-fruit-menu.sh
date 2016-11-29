#!/bin/bash
# there exists sth. betnween the terminal and the REPL
# shouldn't be a blank line in the end
echo "do you want fruit"
	select x in 'apple' 'orange' 'exit'
do
	case ${x} in
apple)
	echo "you want apple" ;;
orange)
	echo "you want orange" ;;
exit)
    echo "Welcome!!" ;;
*)
	echo "nothing selected"
	break;
	;;
    esac
done