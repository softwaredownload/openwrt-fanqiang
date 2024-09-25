最好的 OpenWrt 路由器 shadowsocks 自动翻墙、科学上网教程
===========================================

## 最新、最简洁的翻墙方法

- [简单、高速、稳定的翻墙软件 overtls 安装、使用教程](ebook/05.4.md)
- [overtls + tun2proxy 实现全局翻墙，所有流量走代理](ebook/05.42.md)
- [全能翻墙工具 sing-box + overtls 配置方法和使用教程](ebook/05.45.md)


手把手教你路由器刷OpenWrt固件，自动穿越万里长城

本科学上网方案的特点
-----------------

放弃建立被墙网站黑名单的方案吧，被墙的网站每天在增加，黑名单永远无法完善

大道至简，一劳永逸！

- [建立国内重要网站白名单](https://github.com/softwaredownload/openwrt-fanqiang/blob/master/openwrt/default/etc/dnsmasq.d/accelerated-domains.china.conf)，在国内进行dns查询
- [其他网站通过通过 shadowsocks 服务端进行dns查询](ebook/03.5.md)
- 亚洲或国内的IP流量走国内通道
- 其他流量通过shadowsocks服务端转发
- [路由器屏蔽国内外的广告](ebook/03.6.md)
- [利用 Bash 一键切换翻墙模式](ebook/03.11.md)
- [Windows 电脑 Shadowsocks + Simple-obfs 科学上网教程](ebook/04.9.md)
- [Android 安卓手机安装 shadowsocks 科学上网教程](ebook/03.10.md)
- [预编译翻墙固件的设置和使用 (WNDR4300为例)](ebook/wndr4300/6.login-setup-netgear-wndr4300-fanqiang.md)
- [Digital Ocean 创建VPS教程](ebook/03.9.md)
- [有哪些翻墙软件](ebook/09.1.md)
- [翻墙失败的原因分析](ebook/03.7.md)

知识若不分享，实在没有意义
-----------------------

2014年6月 Dropbox壮烈被墙

查资料发现，著名的开源路由器固件OpenWrt支持家里的路由器 TP-Link WR2543N V1 ，于是就给路由器安装了OpenWrt并设置为自动智能翻墙

再也没有打不开的网站了，自由的感觉真好:　YouTube, twitter, FaceBook, Google...

什么是圣人，**圣人就是得到和付出比较均衡的人**：

- 天地生我，我敬天地
- 父母育我，我养父母
- 网上获得知识，网上分享知识

于是，花了许多天，查资料，写教程，调试固件，不知不觉一天就过去了

希望你应用本教程后，也把你的过程写下来，合并到这个项目中来:
[https://github.com/softwaredownload/openwrt-fanqiang](https://github.com/softwaredownload/openwrt-fanqiang)

Linux下如何编译OpenWrt shadowsocks自动翻墙固件
-------------------------------------

- 首先把本项目clone到本地目录，如 ~/Downloads/openwrt-fanqiang
- 原始配置文件
  - ~/Downloads/openwrt-fanqiang/openwrt/default 默认配置文件夹
  - ~/Downloads/openwrt-fanqiang/openwrt/wndr4300 针对特定路由器型号的配置文件，此处以wndr4300为例
- 复制配置文件
  - 本地建立配置文件目录，如 ~/Downloads/openwrt-wndr4300
  - 复制默认配置文件夹下面的文件到 ~/Downloads/openwrt-wndr4300/ 下
  - 如果有针对特定路由器的配置文件，也复制到~/Downloads/openwrt-wndr4300/，并覆盖同名文件
- 修改配置文件，编译后就直接可以用了。否则刷上固件后登录路由器再修改。主要修改：
  - openwrt-wndr4300/etc/shadowsocks-libev/config.json
  - openwrt-wndr4300/usr/bin/ss-firewall-asia
  - openwrt-wndr4300/etc/uci-defaults/defaults
- 编译自定义固件，设置FILES=~/Downloads/openwrt-wndr4300

本项目规定的默认值
---------------

    shadowsocks server:         1.0.9.8
    shadowsocks server_port:    1098
    shadowsocks local_port:     7654
    shadowsocks tunnel_port:    3210
    shadowsocks password:       killgfw
    root login password:        fanqiang
    WIFI password:              icanfly9876

关于 IPv6
---------

默认翻墙固件不支持IPv6

有的软件如 Dropbox 桌面客户端默认连接到服务端 IPv6 地址，`ping dropbox.com` 出来的是IPv6 地址， 可能导致客户端连接服务器失败，浏览器导航到 www.Dropbox.com 连接被重置 (可用 [Mega](https://mega.nz/aff=-iGudwBMHKw) 替代 Dropbox)

解决办法：网络连接的属性，不要勾选 `Internet Protocol Version 6 (TCP/IPv6)`

相关资源
------

- Netgear WNDR4300 预编译翻墙固件，支持xchacha20-ietf-poly1305(2018-10-22):
    [https://software-download.name/2015/netgear-wndr4300-openwrt-fanqiang-gujian/](https://software-download.name/2015/netgear-wndr4300-openwrt-fanqiang-gujian/)

- shadowsocks-libev_3.2.0-1_mips_24kc.ipk, simple-obfs_0.0.5-3_mips_24kc.ipk (2018-10-22):
    [https://software-download.name/2014/shadowsocks-libev-polarssl-ar71xx-ipk-latest/](https://software-download.name/2014/shadowsocks-libev-polarssl-ar71xx-ipk-latest/)

- 史上最详细的OpenWrt路由器翻墙教程下载 PDF epub (2018-10)
    [https://software-download.name/2014/fanqiang-jiaocheng/](https://software-download.name/2014/fanqiang-jiaocheng/)

- Shadowsocks-libev Windows 客户端下载: ss-redir ss-tunnel obfs-local (2018-08 by cokebar)
    [https://software-download.name/2018/shadowsocks-libev-windows-binary-download/](https://software-download.name/2018/shadowsocks-libev-windows-binary-download/)

- D-Link DIR-505 预编译翻墙固件 (2018-10-22):
    [https://software-download.name/2014/dlink-dir-505-openwrt-fanqiang/](https://software-download.name/2014/dlink-dir-505-openwrt-fanqiang/)

- TP-Link TLWR2543 预编译翻墙固件 (2018-10-22):
    [https://software-download.name/2014/openwrt-ar71xx-generic-tl-wr2543-v1-squashfs-sysupgrade-bin-with-shadowsocks/](https://software-download.name/2014/openwrt-ar71xx-generic-tl-wr2543-v1-squashfs-sysupgrade-bin-with-shadowsocks/)


在线阅读史上最详细的[科学上网教程](https://fanqiang.software-download.name)
---------------------------

- <https://github.com/softwaredownload/openwrt-fanqiang/blob/master/SUMMARY.md>
- <https://fanqiang.software-download.name>

----

Thanks to [Easy Software Download](https://software-download.name) for hosting the firmware