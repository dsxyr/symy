#####archlinux 安装
```
# Pacman 别名示例
alias pacupg='sudo pacman -Syu'        # 同步软件仓库信息然后升级系统
alias pacin='sudo pacman -S'           # 从软件仓库安装软件包
alias pacins='sudo pacman -U'          # 从本地文件安装软件包
alias pacre='sudo pacman -R'           # 删除软件包，保留配置和依赖
alias pacrem='sudo pacman -Rns'        # 彻底删除软件包，清除配置，删除无用依赖
alias pacrep='pacman -Si'              # 显示软件仓库中某软件包的信息
alias pacreps='pacman -Ss'             # 在软件仓库搜索软件包
alias pacloc='pacman -Qi'              # 显示本地数据库中某软件包的信息
alias paclocs='pacman -Qs'             # 在本地数据库搜索软件包
# 更多示例
alias pacupd='sudo pacman -Sy && sudo abs'     # 同步软件仓库信息并更新abs
alias pacinsd='sudo pacman -S --asdeps'        # 将某软件包作为其它软件包的依赖安装
alias pacmir='sudo pacman -Syy'
```
##安装简述
1. loadkeys us
2. lsblk /dev/sda -o NAME,FSTYPE,SIZE,MOUNTPOINT   
mkfs.ext4 /dev/sda1   
mkswap /dev/sda2 && swapon /dev/sda2   
mount /dev/sda1 /mnt
3. vi /etc/pacman.d/mirrorlist
4. pacstrap /mnt base base-devel net-tools
5. genfstab -U -p /mnt >> /mnt/etc/fstab
6. arch-chroot /mnt
7. vi /etc/locale.gen && locale-gen   
echo LANG="zh_CN.UTF-8" >> /etc/locale.conf   
echo KEYMAP=us >> /etc/vconsole.conf   
ln -s /usr/share/zoneinfo/Asia/Chongqing /etc/localtime   
echo vm >> /etc/hostname   
8. mkinitcpio -p linux
9. passwd
10. pacman -S grub-bios   
grub-install /dev/sda   
grub-mkconfig -o /boot/grub/grub.cfg   
11. exit
12. reboot

##安装详列
* efivar -l  
* loadkeys [localectl list-keymaps]  
* timedatectl set-ntp true  
timedatectl status  
* 分区
lsblk  
    * parted /dev/sda  
    * [MBR]   
        mklabel msdos  
        (parted) mkpart primary ext4 1M 100M  
        (parted) set 1 boot on  
        (parted) mkpart primary ext4 100M 20G  
        (parted) mkpart primary linux-swap 20G 24G  
        (parted) mkpart primary ext4 24G 100%  
        (parted) quit  
    * [GPT]   
        mklabel gpt  
        (parted) mkpart ESP fat32 1M 513M`ESP`  
        (parted) set 1 boot on  
        (parted) mkpart primary ext4 513M 20.5G`/`  
        (parted) mkpart primary linux-swap 20.5G 24.5G`swap`  
        (parted) mkpart primary ext4 24.5G 100%`home`  
        (parted) quit  
* 格式化   
mkfs.vfat -F32 /dev/sda1`esp`  
mkfs.ext4 /dev/sdxY  
mkswap /dev/sdaX  
swapon /dev/sdaX  
* 挂载   
mount /dev/sdxR`/` /mnt  
mkdir /mnt/home  
mount /dev/sda2 /mnt/home  
mkdir -p /mnt/boot/EFI  
mount /dev/sdXY`ESP` /mnt/boot/EFI  
* 源配置   
vim /etc/pacman.d/mirrorlist  
* 基本系统   
pacstrap -i /mnt base base-devel  
* fstab   
genfstab -U -p /mnt >> /mnt/etc/fstab  
* chroot   
arch-chroot /mnt /bin/bash  
* locale   
vim /etc/locale.gen  
locale-gen  
echo LANG=en_US.UTF-8 > /etc/locale.conf  
* 时间  
tzselect   
ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime  
hwclock --systohc --utc  
* ramdisk  
mkinitcpio -p linux  
* root密码  
passwd  
* bootloader  
    * [GPT]   
        pacman -S dosfstools grub efibootmgr
        grub-install --target=x86_64-efi --efi-directory=<EFI 分区挂载点> --bootloader-id=arch_grub --recheck
        grub-mkconfig -o /boot/grub/grub.cfg  
    * [MBR]   
        pacman -S grub os-prober   
        grub-install /dev/sda   
        grub-mkconfig -o /boot/grub/grub.cfg   
* 配置网络   
echo myhostname > /etc/hostname   
vim /etc/hosts   
```
#<ip-address>	<hostname.domain.org>	<hostname>
127.0.0.1	localhost.localdomain	localhost	myhostname  
::1		localhost.localdomain	localhost	myhostname  
```
systemctl enable dhcpcd.service
* 离开 chroot 环境 reboot
exit  
reboot  

##配置
* 添加用户
useradd -m -G wheel,users -s /usr/bin/zsh -p <password> <username>
passwd username

* 终端字体：
# ls /usr/share/kbd/consolefonts/  查看可用终端字体
# setfornt <终端字体>
* 网络
    * 有线连接：
    systemctl start dhcpcd   
    systemctl enable dhcpcd 
    * 无线连接：
    pacman -S iw wpa_supplicant dialog
    wifi-menu	
    * ADSL 宽带连接：
    pacman -S rp-pppoe
    pppoe-setup   
    systemctl start adsl   
    systemctl enable adsl
* sed -i '/Score/{/China/!{n;s/^/#/}}' /etc/pacman.d/mirrorlist
* lspci | grep VGA # 确定显卡型号
pacman -S xf86-video-
* pacman -S ttf-dejavu wqy-microhei alsa-utils
* fcitx：
    安装 fcitx：
    pacman -S fcitx-im fcitx-configtool
    配置：
    export GTK_IM_MODULE=fcitx
    export QT_IM_MODULE=fcitx
    export XMODIFIERS="@im=fcitx"
    KDM、GDM、LightDM 等显示管理器的用户，向 ~/.xprofile添加以上命令。
    startx 与 slim 的用户，向 ~/.xinitrc，在 exec 语句前添加以上命令

* 在virtualbox中安装arch，把kernel模块加上；
pacman -S virtualbox-guest-utils
echo vboxguest >> /etc/modules-load.d/vbox.conf
echo vboxsf >> /etc/modules-load.d/vbox.conf
echo vboxvideo >> /etc/modules-load.d/vbox.conf