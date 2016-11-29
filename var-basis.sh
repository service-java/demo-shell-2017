#!/bin/bash

# echo something ====
# echo "Hello Shell !"



# 定义过的变量，加$ get====
# your_name="luojs"
# echo $your_name
# echo ${your_name}
				# border{}
				# 花括号是可选的，为了帮助解释器识别变量的边界,
				# 推荐给所有变量加上



# a loop simple====
# for skill in Ada Coffe Action Java
# do
#     echo "I am good at ${skill}Script"
#     # echo "I am good at $skill Script" # will add a blank space
# done



# 已定义的变量，可以被重新定义====
# myUrl="hello world"
# echo ${myUrl}
# myUrl="hello shell"
# echo ${myUrl}
# $myUrl="hello js" # 未找到命令
# echo ${myUrl}



# 只读变量====
# myUrl="http://see.xidian.edu.cn/cpp/shell/"
# readonly myUrl
# myUrl="http://see.xidian.edu.cn/cpp/danpianji/" # error



# 删除变量====
# myUrl="hello" # no blank space
# echo "output: $myUrl"
# unset myUrl
# echo "output: $myUrl"
# myUrl="see you again"
# echo $myUrl



# Shell特殊变量====
# the command should be like ... $./shell-basic.sh Zara Ali-------
# echo "shell Thread ID: " $$  # 27610 当前Shell进程的ID
# echo "sh filename: " $0  # 当前脚本的文件名
# echo "func variable: " $n  # 传递给脚本或函数的参数。n 是一个数字，表示第几个参数。例如，第一个参数是$1，第二个参数是$2。
# echo "variable num: " $#  # 传递给脚本或函数的参数个数。
# echo "all variable: " $*  # 传递给脚本或函数的所有参数。
# echo "all variable by another way:" $@  # 与 $* 稍有不同
# echo "last command return res: " $?  # 上个命令的退出状态，或函数的返回值。
# 退出状态是一个数字，
# 大部分命令执行成功会返回 0，失败返回 1。
# $? 也可以表示函数的返回值
# $echo $?sh

# output:
# File Name: ./shell-basic.sh
# First Parameter : Zara
# First Parameter : Ali
# Quoted Values: Zara Ali
# Quoted Values: Zara Ali
# Total Number of Parameters : 2



# $* 和 $@ 的区别====
# the command  ./hello.sh "a" "b" "c" "d"
echo "\$*=" $* # $*= a b c d
echo "\"\$*\"=" "$*" # "$*"= a b c d
echo "\$@=" $@  # $@= a b c d
echo "\"\$@\"=" "$@" # "$@"= a b c d

echo "print each param from \$*"
for var in $*
do
    echo "$var"
done

echo "print each param from \$@"
for var in $@
do
    echo "$var"
done

# the diff
echo "print each param from \"\$*\""
for var in "$*"
do
    echo "$var"
done

echo "print each param from \"\$@\""
for var in "$@"
do
    echo "$var"
done

# output:
# print each param from $*
# a
# b
# c
# d
# print each param from $@
# a
# b
# c
# d
# print each param from "$*"
# a b c d
# print each param from "$@"
# a
# b
# c
# d
# 当它们被双引号(" ")包含时
# "$*"以"$1 $2 … $n"的形式, 整体输出所有参数；
# "$@"以"$1" "$2" … "$n" 的形式输出


