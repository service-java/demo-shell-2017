#!/bin/bash
# 输出重定向
# 命令的输出不仅可以是显示器，
# 还可以很容易的转移向到文件，这被称为输出重定向。
who > users # luo0412  :0           2016-11-30 08:08 (:0)

echo line 1 > users  # cover
echo line 2 >> users # add

# 输入重定向
# wc -l users, it can cal the line num of the file users
# output: 2 users
# wc -l < users
# output: 2

# 一般情况下，每个 Unix/Linux 命令运行时都会打开三个文件：
# 标准输入文件(stdin)：stdin的文件描述符为0，Unix程序默认从stdin读取数据。
# 标准输出文件(stdout)：stdout 的文件描述符为1，Unix程序默认向stdout输出数据。
# 标准错误文件(stderr)：stderr的文件描述符为2，Unix程序会向stderr流中写入错误信息。

echo hello 2 > users

