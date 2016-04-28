#Linux
####发行版
* archlinux  
* debian  
---------
xorg
openbox
gnome-session
gnome-terminal
gnome-control-center
thunar
MonsterWM+bar+Dmenu+Feh+Scripts+URxvt
资源链接

    MonsterWM 源码：https://github.com/c00kiemon5ter/monsterwm

    Bar 源码：https://github.com/LemonBoy/bar

    Dmenu 官网：http://tools.suckless.org/dmenu

    Feh 官网：http://feh.finalrewind.org

    各种脚本：https://github.com/xuxiaodong/bin

    讨论：https://bbs.archlinux.org/viewtopic.php?id=132122

    幻灯源码、所用配置及脚本：https://github.com/xuxiaodong/mwm-slide



####管理工具
* systemd  
    `systemd-analyze` 启动进程耗时  
    `systemd-analyze blame` 各进程启动耗时  
    `systemd-analyze critical-chain` 进程启动链 可接具体服务  
    `systemd-cgls` 控制组等级列出  
    `systemd-cgtop`
    1. timedatectl  
            timedatectl 2015-02-04  
            timedatectl 22:04:43  
            timedatectl list-timezones | grep America | more  
            timedatectl set-timezone America/Los_Angeles  
    2. systemctl  
        > `.service` 服务 `.mount` 挂载点 `.socket` 套接字 `.device` 设备  
        >Runlevel 0 : 关闭系统  
        >Runlevel 1 : 救援？维护模式  
        >Runlevel 3 : 多用户，无图形系统  
        >Runlevel 4 : 多用户，无图形系统  
        >Runlevel 5 : 多用户，图形化系统  
        >Runlevel 6 : 关闭并重启机器  
        
            systemctl list-unit-files --type=service  
            systemctl list-units  
            systemctl --failed  
            systemctl is-enabled crond.service  
            systemctl (start,restart,stop,reload,status,show) firewalld.service  
            systemctl (is-active,enable,disable) httpd.service  
            systemctl (mask,unmask) httpd.service  
            systemctl kill httpd  
            systemctl show -p CPUShares httpd.service
            systemctl set-property httpd.service CPUShares=2000
            systemctl list-dependencies httpd.service 获取依赖列表
            systemctl rescue 救援模式
            systemctl emergency 紧急模式
            systemctl get-default 获取运行等级
            systemctl isolate runleve3.target
            systemctl set-default runlevel3.target
            systemctl (reboot,halt,suspend,hibernate,hybrid-sleep) 重启,停止,挂起,休眠,睡眠
* ip  
        ip -4 a show wlan0
        ip link ls up
        ip a add 192.168.1.101/24 dev eth0
        ip a del 192.168.1.101/24 dev eth0
        ip -s -s a f to 192.168.1.0/24 清除所有接口上的所有地址
        ip link set dev eth0 down
        ip link set dev eth0 up 激活 eth0
        ip route add default via 192.168.1.254 添加/删除默认的网关
        ip link set mtu 9000 dev eth0 网络接口设置最大传输单元
        ip a list eth0 来检验是否生效
        ip r 查看路由
* grub  
    
* cron  
    

---------
####服务环境
* LNMP(Linux+Nginx+Mysql+PHP)  
* SSH
* Apache
* Vsftpd
* Samba
* Bind域名解析服务
* DHCP
* Squid代理缓存
* iSCSI网络存储
* OpenLDAP目录服务
* mail  
----------
####配置
* 网络配置  
静态IP,DNS
----------
`whereis`      安装位置  
`ps -eaf | grep [s]ystemd`  
`grep`  



