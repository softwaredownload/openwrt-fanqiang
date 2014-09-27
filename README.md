OpenWrt智能、自动、透明翻墙路由器教程
================

手把手教你路由器刷OpenWrt固件，自动穿越万里长城。

史上最简易、详细的路由器安装OpenWrt智能翻墙教程。

## 知识若不分享，实在没有意义

2014年6月 Dropbox壮烈被墙。

查资料发现，著名的开源路由器固件OpenWrt支持家里的路由器 TP-Link WR2543N V1 ，于是就给路由器安装了OpenWrt并设置为自动智能翻墙。

自由的感觉真好:　youtube, hulu, twitter, facebook, google...

什么是圣人，圣人就是得到和付出比较均衡的人。天地生我，我敬天地；父母育我，我亦养父母；网上获得知识，也要在网上分享知识。于是，花了许多天，查资料，写教程，调试固件，不知不觉一天就过去了。

希望你应用本教程后，也把你的过程写下来，合并到这个项目中来:  
[https://github.com/softwaredownload/openwrt-fanqiang](https://github.com/softwaredownload/openwrt-fanqiang)

2014-07-14

## 相关资源

- OpenWrt自动翻墙教程电子书下载  
[https://software-download.name/2014/fanqiang-jiaocheng/](https://software-download.name/2014/fanqiang-jiaocheng/)

- TP-Link TLWR2543 预编译翻墙固件(2014-09-01):  
[https://software-download.name/2014/openwrt-ar71xx-generic-tl-wr2543-v1-squashfs-sysupgrade-bin-with-shadowsocks/](https://software-download.name/2014/openwrt-ar71xx-generic-tl-wr2543-v1-squashfs-sysupgrade-bin-with-shadowsocks/)

- D-Link DIR-505 预编译翻墙固件(2014-09-01):  
[https://software-download.name/2014/dlink-dir-505-openwrt-fanqiang/](https://software-download.name/2014/dlink-dir-505-openwrt-fanqiang/)

- shadowsocks-libev-polarssl_ar71xx.ipk (2014-08-18):  
[https://software-download.name/2014/shadowsocks-libev-polarssl-ar71xx-ipk-latest/](https://software-download.name/2014/shadowsocks-libev-polarssl-ar71xx-ipk-latest/)


# 注意事项（2014-09-24）

目前的预编译固件是启用了计划任务的，这会有潜在的不确定性，如果更新时下载的文件存在错误，导致dnsmasq无法读取，可能造成dnsmasq无法启动，翻墙功能自然失效。

如果你刷了预编译固件后，某一天突然不能翻墙了，这时设置客户端的IP地址为和路由器同网段，登陆路由器，用ps命令查看dnsmasq进程是否启动了，如果没有启动，就重刷固件或者 用原来的文件代替 路由器里/etc/dnsmasq.d/下的文件。

第一次刷预编译固件后，建议立即禁用自动更新 dnsmasq.d目录下的文件，运行稳定一段时间后，需要时再加上计划任务。

下次发布固件时，将默认不启计划任务。



## 授权许可
除特别声明外，本书中的内容使用[CC BY-SA 3.0 License](http://creativecommons.org/licenses/by-sa/3.0/)（创作共用 署名-相同方式共享3.0许可协议）授权，代码遵循[BSD 3-Clause License](<https://github.com/softwaredownload/openwrt-fanqiang/blob/master/LICENSE>)（3项条款的BSD许可协议）。


## 在线阅读OpenWrt翻墙路由器教程:
* [https://github.com/softwaredownload/openwrt-fanqiang/blob/master/SUMMARY.md](https://github.com/softwaredownload/openwrt-fanqiang/blob/master/SUMMARY.md)
* [http://softwaredownload.gitbooks.io/openwrt-fanqiang/](http://softwaredownload.gitbooks.io/openwrt-fanqiang/)
