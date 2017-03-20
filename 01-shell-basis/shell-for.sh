#!/bin/bash

# 列表是一组值（数字、字符串等）组成的序列========
# 每个值通过空格分隔。
# 每循环一次，就将列表中的下一个值赋给变量。
for loop in 1 2 3 4 5
do
    echo "The value is: $loop"
done

# The value is: 1
# The value is: 2
# The value is: 3
# The value is: 4
# The value is: 5


# 顺序输出字符串中的字符：========

for str in 'This is a string'
do
    echo $str
done

# This is a string


# 显示主目录下以 .bash 开头的文件：=====
for FILE in $HOME/.bash*
do
   echo $FILE
done

# /home/luo0412/.bash_history
# /home/luo0412/.bash_logout
# /home/luo0412/.bashrc
