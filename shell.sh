
#echo "hello world!"

##内置命令和子shell
#pwd
#cd ..
#pwd

##变量和赋值
#myint=100
#myfloat=3.14
#mystr="hello"
#mychar=c

#echo $myint
#echo $myfloat
#echo $mystr
#echo $mychar
#echo $sdj   ##变量未定义时，输出空串

##变量名拼接导致的错误
mystring="hello world"
#echo "$mystringhello bit"
##防止变量名拼接，用{}
#echo "${mystring}hello bit"

##已定义的变量，可以多次定义
##当变量做右值时，才需要加$符号
#mystr="hello"
#echo $mystr
#$mystr="world"
#echo $mystr

###只读变量：只读变量的值不能改变，即不能二次赋值
#readonly mystr="hello world"
#echo $mystr
#mystr="hello bit"
#echo $mystr

###unset删除变量(运行时删除)
#mystr="hello world"
#echo $mystr
#unset mystr
#echo $mystr

###unset不能删除只读变量
#readonly mystr="hello world"
#echo $mystr
#unset mystr
#echo $mystr

###本地变量和环境变量
###在父shell中定义的变量，可以在交互式的父shell中进行访问，但是在子脚本中不能访问
###在父shell中将变量导出为环境变量后，在子脚本中就可以访问了
#echo $mystr
###unset可以删除环境变量和本地变量
#unset mystr
#echo $mystr
###export导出环境变量
#export mystr=109
#echo $mystr

###字符串拼接
#mystr1='hello '
#mystr2=world
#echo $mystr1$mystr2' jsc'

###获取字符串长度
#mystr=hello
#echo ${#mystr}

###提取子字符串
#mystr="qwertyuiop"
#echo ${mystr:0:3}

###查找子字符串
#string="bit is a great company"
#echo `expr index '$string' company`

###文件名代换，通配符匹配
#for i in {1..100}
#do touch file.$i
#done
#ls file.[1-5]
#ls file.1?

##命令代换和算数运算
#命令代换:反引号``或$()
#date=`date +%Y:%m:%d`
#echo $date
#date=$(date +%Y/%m/%d/%H/%M/%S)
#echo $date

##算数运算
#myint=100
#echo $myint
#(( myint++ ))
#echo $myint

##运算结果做右值或进行赋值
#myint=100
#echo $myint
#ret=$(( myint++ ))
#echo $myint
#ret=$((myint-1))
#echo $ret
#ret=$((myint*2))
#echo $ret
#ret=$((myint/2))
#echo $ret
#ret=$((myint%2))
#echo $ret

##转义字符
#touch \$\ \$

##创建以-开头的文件
#touch -- -file
#touch -- ./-file1

#while :
#do
#    echo "hello"
#    sleep 1
#done

##单双引号
mystr="hello"
echo "$mystr world \" \\ \' `date +%Y/%m/%d`"
echo 'hello bit $mystr \\ \" \\  `date +%Y/%m/%d`'
























