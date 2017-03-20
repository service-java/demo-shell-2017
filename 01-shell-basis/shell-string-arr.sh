#!/bin/bash
# 拼接字符串
your_name="qinjx"
greeting="hello, "$your_name" !"
greeting_1="hello, ${your_name} !"

echo $greeting $greeting_1

# hello, qinjx ! hello, qinjx !


 # 获取字符串长度
string="abcd"
echo ${#string} #输出 4

#  提取子字符串

string="alibaba is a great company"
echo ${string:1:4} #输出liba

# 查找子字符串

string="alibaba is a great company"
echo `expr index "$string" is`
# 3


# 读取数组
NAME[0]="Zara"
NAME[1]="Qadir"
NAME[2]="Mahnaz"
NAME[3]="Ayan"
NAME[4]="Daisy"
echo "First Index: ${NAME[0]}"
echo "Second Index: ${NAME[1]}"

# First Index: Zara
# Second Index: Qadir


# 使用@ 或 * 可以获取数组中的所有元素
NAME[0]="Zara"
NAME[1]="Qadir"
NAME[2]="Mahnaz"
NAME[3]="Ayan"
NAME[4]="Daisy"
echo "First Method: ${NAME[*]}"
echo "Second Method: ${NAME[@]}"

# First Method: Zara Qadir Mahnaz Ayan Daisy
# Second Method: Zara Qadir Mahnaz Ayan Daisy


# 获取数组的长度
# 取得数组元素的个数
length=${#array_name[@]}
length=${#array_name[*]}

# 取得数组单个元素的长度
lengthn=${#array_name[n]}



