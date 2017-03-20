#!/bin/bash
# =============================
# a=10
# echo "Value of a is $a \n"
# echo -e "Value of a is $a \n"

# Value of a is 10
# -e Value of a is 10
# eh, the first should be
# Value of a is $a \n
# on basic, however...


# 命令替换========================
# 先执行命令，将输出结果暂时保存，在适当的地方输出
# DATE=`date`
# echo "Date is $DATE"
# USERS=`who | wc -l`
# echo "Logged in user are $USERS"
# UP=`date ; uptime`
# echo "Uptime is $UP"

# output result
# Date is 2016年 11月 23日 星期三 17:20:47 CST
# Logged in user are 1
# Uptime is 2016年 11月 23日 星期三 17:20:47 CST
#  17:20:47 up  3:26,  1 user,  load average: 0.80, 0.63, 0.71


# 变量替换=========================
# echo ${var:-"Variable is not set"}
# echo "1 - Value of var is ${var}"

# echo ${var:="Variable is not set"}
# echo "2 - Value of var is ${var}"

# unset var
# echo ${var:+"This is default value"}
# echo "3 - Value of var is $var"

# var="Prefix"
# echo ${var:+"This is default value"}
# echo "4 - Value of var is $var"

# echo ${var:?"Print this message"}
# echo "5 - Value of var is ${var}"

# output result
# Variable is not set
# 1 - Value of var is 
# Variable is not set
# 2 - Value of var is Variable is not set

# 3 - Value of var is 
# This is default value
# 4 - Value of var is Prefix
# Prefix
# 5 - Value of var is Prefix

# expr==================
# val=`expr 2+2` # Total value : 2+2
# val=`expr 2 + 2` # 表达式和运算符之间要有空格
# echo "Total value : $val" # Total value : 4

# 算术运算符===============
# if...then...fi 是条件语句
# ./  与 sh 运行的方式似乎有区别
# pay more attention!!
# a=10
# b=20
# val=`expr $a + $b`
# echo "a + b : $val"
# val=`expr $a - $b`
# echo "a - b : $val"
# val=`expr $a \* $b`
# echo "a * b : $val"
# val=`expr $b / $a`
# echo "b / a : $val"
# val=`expr $b % $a`
# echo "b % a : $val"
# if [ $a == $b ] # 78: [: 10: unexpected operator
# then
#    echo "a is equal to b"
# fi

# if [ $a != $b ] # 条件表达式要放在方括号之间，并且要有空格
# then
#    echo "a is not equal to b"
# fi

# result output
# a + b : 30
# a - b : -10
# a * b : 200
# b / a : 2
# b % a : 0
# a is not equal to b


# 关系运算符===================================
# 只支持数字，不支持字符串，除非字符串的值是数字
# a=10
# b=20

# if [ $a -eq $b ]
# then
#    echo "$a -eq $b : a is equal to b"
# else
#    echo "$a -eq $b: a is not equal to b"
# fi

# if [ $a -ne $b ]
# then
#    echo "$a -ne $b: a is not equal to b"
# else
#    echo "$a -ne $b : a is equal to b"
# fi

# if [ $a -gt $b ]
# then
#    echo "$a -gt $b: a is greater than b"
# else
#    echo "$a -gt $b: a is not greater than b"
# fi

# if [ $a -lt $b ]
# then
#    echo "$a -lt $b: a is less than b"
# else
#    echo "$a -lt $b: a is not less than b"
# fi

# if [ $a -ge $b ]
# then
#    echo "$a -ge $b: a is greater or  equal to b"
# else
#    echo "$a -ge $b: a is not greater or equal to b"
# fi

# if [ $a -le $b ]
# then
#    echo "$a -le $b: a is less or  equal to b"
# else
#    echo "$a -le $b: a is not less or equal to b"
# fi

# 10 -eq 20: a is not equal to b
# 10 -ne 20: a is not equal to b
# 10 -gt 20: a is not greater than b
# 10 -lt 20: a is less than b
# 10 -ge 20: a is not greater or equal to b
# 10 -le 20: a is less or  equal to b



# 布尔运算符 ===============================
# a=10
# b=20
# if [ $a != $b ]
# then
#    echo "$a != $b : a is not equal to b"
# else
#    echo "$a != $b: a is equal to b"
# fi
# if [ $a -lt 100 -a $b -gt 15 ]
# then
#    echo "$a -lt 100 -a $b -gt 15 : returns true"
# else
#    echo "$a -lt 100 -a $b -gt 15 : returns false"
# fi
# if [ $a -lt 100 -o $b -gt 100 ]
# then
#    echo "$a -lt 100 -o $b -gt 100 : returns true"
# else
#    echo "$a -lt 100 -o $b -gt 100 : returns false"
# fi
# if [ $a -lt 5 -o $b -gt 100 ]
# then
#    echo "$a -lt 100 -o $b -gt 100 : returns true"
# else
#    echo "$a -lt 100 -o $b -gt 100 : returns false"
# fi

# 10 != 20 : a is not equal to b
# 10 -lt 100 -a 20 -gt 15 : returns true
# 10 -lt 100 -o 20 -gt 100 : returns true
# 10 -lt 100 -o 20 -gt 100 : returns false


# 字符串运算符
# a="abc"
# b="efg"
# if [ $a = $b ]
# then
#    echo "$a = $b : a is equal to b"
# else
#    echo "$a = $b: a is not equal to b"
# fi
# if [ $a != $b ]
# then
#    echo "$a != $b : a is not equal to b"
# else
#    echo "$a != $b: a is equal to b"
# fi
# if [ -z $a ]
# then
#    echo "-z $a : string length is zero"
# else
#    echo "-z $a : string length is not zero"
# fi
# if [ -n $a ]
# then
#    echo "-n $a : string length is not zero"
# else
#    echo "-n $a : string length is zero"
# fi
# if [ $a ]
# then
#    echo "$a : string is not empty"
# else
#    echo "$a : string is empty"
# fi

# abc = efg: a is not equal to b
# abc != efg : a is not equal to b
# -z abc : string length is not zero
# -n abc : string length is not zero
# abc : string is not empty


# 文件测试运算符
# 用于检测 Unix 文件的各种属性。

file="/home/luo0412/shell-project/shell-basic.sh"

if [ -r $file ]
then
   echo "File has read access"
else
   echo "File does not have read access"
fi

if [ -w $file ]
then
   echo "File has write permission"
else
   echo "File does not have write permission"
fi

if [ -x $file ]
then
   echo "File has execute permission"
else
   echo "File does not have execute permission"
fi

if [ -f $file ]
then
   echo "File is an ordinary file"
else
   echo "This is sepcial file"
fi

if [ -d $file ]
then
   echo "File is a directory"
else
   echo "This is not a directory"
fi

if [ -s $file ]
then
   echo "File size is zero"
else
   echo "File size is not zero"
fi

if [ -e $file ]
then
   echo "File exists"
else
   echo "File does not exist"
fi

# File has read access
# File has write permission
# File has execute permission
# File is an ordinary file
# This is not a directory
# File size is zero
# File exists






