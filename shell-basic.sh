#!/bin/bash
echo "Hello World !"

# 使用一个定义过的变量，只要在变量名前面加美元符号（$）即可------
# your_name="mozhiyan"
# echo $your_name
# echo ${your_name}

# 变量名外面的花括号是可选的，加不加都行，加花括号是为了帮助解释器识别变量的边界
# 推荐给所有变量加上花括号，这是个好的编程习惯。-------------------
# for skill in Ada Coffe Action Java 
# do
#     echo "I am good at ${skill}Script"
#     echo "I am good at $skill Script"
# done

# 已定义的变量，可以被重新定义
# but不能写 $myUrl="http://see.xidian.edu.cn/cpp/shell/"-----------
# myUrl="http://see.xidian.edu.cn/cpp/linux/"
# echo ${myUrl}
# myUrl="http://see.xidian.edu.cn/cpp/shell/"
# echo ${myUrl}

# 只读变量---------------
# myUrl="http://see.xidian.edu.cn/cpp/shell/"
# readonly myUrl
# myUrl="http://see.xidian.edu.cn/cpp/danpianji/"

# 删除变量-------------
# unset myUrl
# echo "output: $myUrl"
# myUrl="http://see.xidian.edu.cn/cpp/u/xitong/"
# echo $myUrl

# Shell特殊变量-------------
# echo $$   # 27610 当前Shell进程的ID
# echo $0   # 当前脚本的文件名
# echo $n 	# 传递给脚本或函数的参数。n 是一个数字，表示第几个参数。例如，第一个参数是$1，第二个参数是$2。
# echo $# 	# 传递给脚本或函数的参数个数。
# echo $* 	# 传递给脚本或函数的所有参数。
# echo $@ 	# 传递给脚本或函数的所有参数。被双引号(" ")包含时，与 $* 稍有不同
# echo $? 	# 上个命令的退出状态，或函数的返回值。
# echo $$ 	# 当前Shell进程ID。对于 Shell 脚本，就是这些脚本所在的进程ID。

# the command is $./hello.sh Zara Ali-------
# echo "File Name: $0"
# echo "First Parameter : $1"
# echo "First Parameter : $2"
# echo "Quoted Values: $@"
# echo "Quoted Values: $*"
# echo "Total Number of Parameters : $#"

# output result
# File Name: ./hello.sh
# First Parameter : Zara
# First Parameter : Ali
# Quoted Values: Zara Ali
# Quoted Values: Zara Ali
# Total Number of Parameters : 2


# $* 和 $@ 的区别--------------------------
# the command  ./hello.sh "a" "b" "c" "d"
# echo "\$*=" $* # $*= a b c d
# echo "\"\$*\"=" "$*" # "$*"= a b c d
# echo "\$@=" $@ # $@= a b c d
# echo "\"\$@\"=" "$@" # "$@"= a b c d
# echo "print each param from \$*"
# for var in $*
# do
#     echo "$var"
# done
# echo "print each param from \$@"
# for var in $@
# do
#     echo "$var"
# done
# echo "print each param from \"\$*\""
# for var in "$*"
# do
#     echo "$var"
# done
# echo "print each param from \"\$@\""
# for var in "$@"
# do
#     echo "$var"
# done

# output result
# 
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
# 当它们被双引号(" ")包含时，"$*" 会将所有的参数作为一个整体，
# 以"$1 $2 … $n"的形式输出所有参数；
# "$@" 会将各个参数分开，以"$1" "$2" … "$n" 的形式输出所有参数

# 退出状态是一个数字，
# 大部分命令执行成功会返回 0，失败返回 1。
# $? 也可以表示函数的返回值
# $echo $?sh


