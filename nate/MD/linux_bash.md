sh 彩色输出  '\e[1;xxm'     '\e[0m'
	字色	重置 0 黑色 30 红色 31 绿色 32 黄色 33 蓝色 34 洋红 35 青色 36 白色 37
	背景色  重置 0 黑色 40 红色 41 绿色 42 黄色 43 蓝色 44 洋红 45 青色 46 白色 47

获取进程id 		pgrep pid
获取进程环境变量 	cat /proc/$pid/environ
设置变量为环境变量	export xxx
			export PATH="$PATH;~/dsxyr"
获取变量长度		${#var}
let  执行算数操作 []    (())
echo "scale=2;4" | bc
echo "obase=10;ibase=2;$var" | bc
echo "sqrt(10000)" | bc
echo "3^4" | bc
    0 stdin
    1 stdout
    2 stderr
数组    var=(0 1 2 3 4 5 6 7 8 9)
        echo ${var[2]}
        echo ${var[*]}
        echo ${var[@]}
        echo ${#var[*]}
        date +%s        纪元时
        sleep 延时
        set -x   执行显示
        set +x
        set -v   读取显示
        set +v

date MMDDhhmmYY.ss
hwclock --show
hwclock --systohc
hwclock --hctosys