# 定义变量时不加美元符号
your_name="jeason"
echo $your_name

# 注意！变量名和等号之间不能有空格！
# 变量名的命名和其他语言类似，并且，不能使用bash中的关键字作为变量名，不能含有标点符号
# 毫无疑问，严格区分大小写！

# 除了显示的赋值，还可以用语句/表达式的值给变量赋值，比如：
for file in 'ls /'  # 不知道为什么这种方式无法取出值
do
    echo $file
done

echo "---------------------"

for file in $(ls /)  # 可见，通过 $ 符号可以将变量或者表达式的值取出来，这里取出来的是文件名称的列表
do
    echo $file
done

echo "--------------------"

# 使用变量，肯定是要用美元符号取变量的值的，但是，更加推荐用花括号将变量包起来，能帮助解释器识别变量的边界，如：
my_name="jeason"
echo $my_name
echo ${my_name}
echo "my name is $my_name"
echo "my name is ${my_name}chan"  # 此处能完美的识别变量

for language in C++ Python Java JavaScripts
do
    echo "I am good at ${language}"
done

# 对变量取值时加上花括号是最最最标准的写法，是优秀的习惯！！！！！！！！！

echo "-----------------------"
# 只读变量，定义完一个变量后，使用readonly对变量本身（而不是里面的值）进行操作，使其变为值只读
my_url="11111111"
readonly my_url
my_url="22222222"  # 控制台提示，变量是只读变量

echo "--------------------"

# 删除变量
# 使用unset 命令删除变量，变量被删除后便不能再次使用，同时，unset操作无法删除只读变量
test_var1="11111"
echo ${test_var1}
unset test_var1
echo ${test_var1}  # 这句话其实打印的是一行空值，感觉不是真正意义上的删除

echo "------------"

# 根据变量的作用域，可以分为三种变量：
# http://www.runoob.com/linux/linux-shell-variable.html