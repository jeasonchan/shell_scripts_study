#这里的第一行写的东西 #! 一般是告诉系统其后路径所指定的程序即是解释此脚本文件的 Shell 程序。

echo "hello world!"

# 运行脚本一般有两种方式：
# 1、作为可执行程序
# 即，直接使用脚本的第一行的解释器作为脚本的解释执行程序，调用的方式是：
# chomod +x ./fileName.sh
# ./fileName.sh

# 2、脚本本身作为解释器的参数
# 调用方式为：
# bash fileName.sh  或者 bash ./fileName.sh
# 由于本脚本第一行没写明解释器，因此，必须将该脚本作为解释器的入参进行执行


# 注意的是，第一种方式，前面必须执行在当前目录的下执行这个sh脚本，否则会提示，xxxxxx不是可执行的程序，为了确保执行成功，可以直接使用tab不全功能