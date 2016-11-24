#!/bin/bash
# break命令
# break命令允许跳出所有循环（终止执行后面的所有循环）。
# 下面的例子中，脚本进入死循环直至用户输入数字大于5。
# 要跳出这个循环，返回到shell提示符下，需要使用break命令。

while :
do
    echo -n "输入 1 到 5 之间的数字:"
    read aNum
    case $aNum in
        1|2|3|4|5) echo "你输入的数字为 $aNum!"
        ;;
        *) echo "你输入的数字不是 1 到 5 之间的! 游戏结束"
            break
        ;;
    esac
done

# 输入 1 到 5 之间的数字:3
# 你输入的数字为 3!
# 输入 1 到 5 之间的数字:7
# 你输入的数字不是 1 到 5 之间的! 游戏结束


#  continue
# continue命令与break命令类似，
# 只有一点差别，它不会跳出所有循环，仅仅跳出当前循环。
while :
do
    echo -n "输入 1 到 5 之间的数字: "
    read aNum
    case $aNum in
        1|2|3|4|5) echo "你输入的数字为 $aNum!"
        ;;
        *) echo "你输入的数字不是 1 到 5 之间的!"
            continue
            echo "游戏结束"
        ;;
    esac
done

#  运行代码发现，当输入大于5的数字时，
#  该例中的循环不会结束，语句 echo "Game is over!" 永远不会被执行。


# esac
# case的语法和C family语言差别很大，
# 它需要一个esac（就是case反过来）作为结束标记，
# 每个case分支用右圆括号，用两个分号表示break。