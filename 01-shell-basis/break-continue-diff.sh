#!/bin/bash
# break命令允许跳出所有循环（终止执行后面的所有循环）====
# ;; --> C break
# break --> break out the loop
# 下面的例子
# 脚本进入死循环直至用户输入数字break。

# while :
# do
#     echo -n "输入 1 到 5 之间的数字:"
#     read aNum
#     case ${aNum} in
#         1|2|3|4|5)
#             echo "你输入的数字为 $aNum!"
#         ;;
#         *)
#             echo "你输入的数字不是 1 到 5 之间的! 游戏结束"
#             break
#         ;;
#     esac
# done



#  continue不会跳出所有循环，仅仅跳出当前循环====
while :
do
    echo -n "输入 1 到 5 之间的数字: "
    read aNum
    case $aNum in
        1|2|3|4|5)
            echo "你输入的数字为 $aNum!"
        ;;
        *)
            echo "你输入的数字不是 1 到 5 之间的!"
            continue
            echo "游戏结束"
        ;;
    esac
done
#  循环不会结束, echo "Game is over!" 永远不会被执行。