#!/bin/bash
# echo "Hello World !"

# 使用一个定义过的变量，只要在变量名前面加美元符号（$）即可
# your_name="mozhiyan"
# echo $your_name
# echo ${your_name}

# 变量名外面的花括号是可选的，加不加都行，加花括号是为了帮助解释器识别变量的边界
# 推荐给所有变量加上花括号，这是个好的编程习惯。
# for skill in Ada Coffe Action Java 
# do
#     echo "I am good at ${skill}Script"
#     echo "I am good at $skill Script"
# done

# 已定义的变量，可以被重新定义
# but不能写 $myUrl="http://see.xidian.edu.cn/cpp/shell/"
myUrl="http://see.xidian.edu.cn/cpp/linux/"
echo ${myUrl}
myUrl="http://see.xidian.edu.cn/cpp/shell/"
echo ${myUrl}

# 