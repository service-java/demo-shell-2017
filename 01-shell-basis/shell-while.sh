#!/bin/bash
# 返回数字1到5，然后终止=====
# 使用中使用了 Bash let 命令，
# 它用于执行一个或多个表达式，
# 变量计算中不需要加上 $ 来表示变量

COUNTER=0
while [ $COUNTER -lt 5 ]
do
    COUNTER='expr $COUNTER+1'
    echo $COUNTER
done

# int=1
# while(( $int<=5 ))
# do
#         echo $int
#         let "int++"
# done

# output:
# 1
# 2
# 3
# 4
# 5


# while循环可用于读取键盘信息。
# 下面的例子中，输入信息被设置为变量FILM，
# 按<Ctrl-D>结束循环

# echo '按下 <CTRL-D> 退出'
# echo -n '输入你最喜欢的电影名: '
# while read FILM
# do
#     echo "是的！$FILM 是一部好电影"
# done

# 按下 <CTRL-D> 退出
# 输入你最喜欢的电影名: w3cschool菜鸟教程
# 是的！w3cschool菜鸟教程 是一部好电影


#  无限循环
# 无限循环语法格式：

# while :
# do
#     command
# done

# 或者
# while true
# do
#     command
# done

# 或者
# for (( ; ; ))





