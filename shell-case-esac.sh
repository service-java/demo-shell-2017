#!/bin/bash

# case ... esac 与其他语言中的 switch ... case 语句类似，
# 是一种多分枝选择结构
echo 'Input a number between 1 to 4'
echo 'Your number is:\c'
read aNum
case $aNum in
    1)  echo 'You select 1'
    ;;
    2)  echo 'You select 2'
    ;;
    3)  echo 'You select 3'
    ;;
    4)  echo 'You select 4'
    ;;
    *)  echo 'You do not select a number between 1 to 4'
    ;;
esac

# 取值后面必须为关键字 in，
# 每一模式必须以右括号结束。
# 取值可以为变量或常数。
# 匹配发现取值符合某一模式后，
# 其间所有命令开始执行直至 ;;。
# ;; 与其他语言中的 break 类似，意思是跳到整个 case 语句的最后。

# 取值将检测匹配的每一个模式。
# 一旦模式匹配，则执行完匹配模式相应命令后不再继续其他模式。
# 如果无一匹配模式，使用星号 * 捕获该值，再执行后面的命令。

option="${1}"
case ${option} in
   -f) FILE="${2}"
      echo "File name is $FILE"
      ;;
   -d) DIR="${2}"
      echo "Dir name is $DIR"
      ;;
   *) 
      echo "`basename ${0}`:usage: [-f file] | [-d directory]"
      exit 1 # Command to come out of the program with status 1
      ;;
esac

# $./test.sh
# test.sh: usage: [ -f filename ] | [ -d directory ]
# $ ./test.sh -f index.htm
# $ vi test.sh
# $ ./test.sh -f index.htm
# File name is index.htm
# $ ./test.sh -d unix
# Dir name is unix
# $

