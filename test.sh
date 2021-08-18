#!/bin/sh
echo 'hello,World'
echo $0 $1 $2
echo $*
echo $@
echo 参数个数=$#
echo 当前的进程号=$$
# & ：以后台的方式运行程序
echo 最后一个进程的进程号=￥1
echo 最后执行的命令结果=$?

#判断的条件前后必须要有空格隔开

if [ 'test01' = 'test' ] 
then
     echo '等于' 
fi  

# 20是否大于10 
if [ 20 -gt 10 ] 
then
     echo '大于' 
fi  

# 是否存在文件/root/shell/a.txt 
if [ -e /root/shell/a.txt ] 
then
     echo '存在' 
fi  

if [ 'test02' = 'test02' ] && echo 'hello' || echo 'world' 
then
     echo '条件满足，执行后面的语句' 
fi

#流程判断
if [ $1 -ge 60 ]
then
    echo 及格
elif [ $1 -lt 60 ]
then
    echo "不及格" 
fi

#switch 语法
case $1 in
"1")
echo 周一
;;
"2")
echo 周二
;;
*)
echo 其它
;;
esac


#for语法
# 使用$*
for i in "$*"
do
    echo "the arg is $i"
done
echo "=================="

# 使用$@
for j in "$@"
do
    echo "the arg is $j"
done

#输出1加到100的值
SUM=0
j=0
for ((j=1;j<=100;j++))
do
    SUM=$[$SUM+$j]
done
echo $SUM
SUM=0
i=0

#while循环
while [ $i -le $1 ]
do
    SUM=$[$SUM+$i]
    i=$[$i+1]
done       
echo $SUM

#读取控制台输入一个num值。
read -p "请输入一个数num1=" NUM1
echo "你输入num1的值是：$NUM1"

read -t 10 -p "请在10秒内输入一个数num2=" NUM2
echo "你输入num2的值是：$NUM2"
