# openwrt-lede源码专用软件包

##### 添加以下插件
###### [luci-app-advanced](#/README.md)   &nbsp;&nbsp;&nbsp;&nbsp;#高级设置自用版已去掉引发冲突的文件浏览器.
###### [luci-app-advancedsetting](#/README.md)    &nbsp;&nbsp;&nbsp;&nbsp;#openwrt高级设置基础版
###### [luci-app-onliner](#/README.md)    &nbsp;&nbsp;&nbsp;&nbsp;#路由联机信息
###### [luci-app-godproxy](#/README.md)    &nbsp;&nbsp;&nbsp;&nbsp;#KoolProxy改版去广告效果不错!
###### [luci-app-fileassistant](#/README.md)    &nbsp;&nbsp;&nbsp;&nbsp;#文件助手
###### [luci-theme-rosy](#/README.md)    &nbsp;&nbsp;&nbsp;&nbsp;#主题-rosy
###### [luci-theme-edge](#/README.md)   &nbsp;&nbsp;&nbsp;&nbsp;#主题-edge
###### [luci-theme-mcat](#/README.md)  &nbsp;&nbsp;&nbsp;&nbsp;#主题-mcat
###### [luci-theme-opentopd](#/README.md)  &nbsp;&nbsp;&nbsp;&nbsp;#主题-opentopd<br>
###### [luci-theme-atmaterial](#/README.md)  &nbsp;&nbsp;&nbsp;&nbsp;#atmaterial-主题<br>
###### [luci-theme-rosy](#/README.md)   &nbsp;&nbsp;&nbsp;&nbsp;#主题-rosy<br>
###### [luci-theme-ifit](#/README.md)   &nbsp;&nbsp;&nbsp;&nbsp;#透明主题(替换默认背景图)<br>
###### [luci-app-serverchan](#/README.md)    &nbsp;&nbsp;&nbsp;&nbsp;#微信推送<br>
###### [luci-app-eqos](#/README.md)   &nbsp;&nbsp;&nbsp;&nbsp;#内网控速 内网IP限速工具，和Turbo ACC 网络加速有冲突<br>
###### [luci-app-jd-dailybonus](#/README.md)    &nbsp;&nbsp;&nbsp;&nbsp;#京东签到<br>
###### [luci-app-poweroff](#/README.md)    &nbsp;&nbsp;&nbsp;&nbsp;#关机（增加关机功能）<br>
###### [luci-theme-argon](#/README.md)   &nbsp;&nbsp;&nbsp;&nbsp;#新的argon主题<br>
###### [luci-app-argon-config](#/README.md)    &nbsp;&nbsp;&nbsp;&nbsp;#argon主题设置（编译时候选上,在固件的‘系统’里面）<br>
###### [luci-app-oaf （OpenAppFilter）](#/README.md)  &nbsp;&nbsp;&nbsp;&nbsp;#应用过滤 ，该模块只工作在路由模式， 旁路模式、桥模式不生效，还有和Turbo ACC 网络加速有冲突<br>
###### [luci-app-gost](#/README.md)   &nbsp;&nbsp;&nbsp;&nbsp;#GO语言实现的安全隧道<br>
###### [luci-app-autotimeset](#/README.md)   &nbsp;&nbsp;&nbsp;&nbsp;#定时重启、定时关机、定时重启网络，替代luci-app-autoreboot，[不能同时编译](#/README.md) <br>
###### [luci-app-control-webrestriction](#/README.md)   &nbsp;&nbsp;&nbsp;&nbsp;#访问限制<br>
###### [luci-app-control-weburl](#/README.md)   &nbsp;&nbsp;&nbsp;&nbsp;#网址过滤<br>
###### [luci-app-modeminfo](#/README.md)    &nbsp;&nbsp;&nbsp;&nbsp;#OpenWrt LuCi的3G / LTE加密狗信息<br>
###### [luci-app-gowebdav](#/README.md)   &nbsp;&nbsp;&nbsp;&nbsp;#GoWebDav 是一个轻巧、简单、快速的 WebDav 服务端程序<br>
###### [luci-app-smartinfo](#/README.md)   &nbsp;&nbsp;&nbsp;&nbsp;#磁盘监控 ，该工具帮助您通过S.M.A.R.T技术来监控您硬盘的健康状况<br>
###### [luci-app-pptp-vpnserver-manyusers](#/README.md)   &nbsp;&nbsp;&nbsp;&nbsp;#PPTP VPN 服务器
###### [luci-app-smartdns](#/README.md)   &nbsp;&nbsp;&nbsp;&nbsp;#smartdns DNS加速<br>
###### [luci-app-mentohust](#/README.md)   &nbsp;&nbsp;&nbsp;&nbsp;#MentoHUST 的 LuCI 控制界面<br>
###### [luci-app-dockerman](#/README.md)   &nbsp;&nbsp;&nbsp;&nbsp;#docker容器，和源码自带的luci-app-docker[不能同时编译](#/README.md)，同时编译会失败，所以要注意<br>
###### [luci-app-syncthing](#/README.md)   &nbsp;&nbsp;&nbsp;&nbsp;#Syncthing是一个连续的文件同步程序。它在两台或多台计算机之间同步文件
###### [luci-app-dnsfilter](#/README.md)    &nbsp;&nbsp;&nbsp;&nbsp;#广告过滤，支持 AdGuardHome/Host/DNSMASQ/Domain 格式的规则订阅
###### [luci-app-tencentddns](#/README.md)    &nbsp;&nbsp;&nbsp;&nbsp;#腾讯DDNS
###### [luci-app-ttnode](#/README.md)    &nbsp;&nbsp;&nbsp;&nbsp;#一个运行在openwrt下的甜糖星愿自动采集插件
###### [luci-app-serverchand](#/README.md)    &nbsp;&nbsp;&nbsp;&nbsp;#钉钉信息推送
###### [luci-app-socat](#/README.md)    &nbsp;&nbsp;&nbsp;&nbsp;#端口转发
###### [luci-app-ddnsto](#/README.md)    &nbsp;&nbsp;&nbsp;&nbsp;#DDNSTO 通过穿透技术，不需要公网 IP 也可以访问内网设备
#

- luci-app-samba 和 luci-app-samba4 不能同时编译，同时编译会失败
- 想选择luci-app-samba4，首先在Extra packages ---> 把autosamba取消，在选择插件的那里把luci-app-samba取消，然后在Network ---> 把 samba36-server取消，最后选择luci-app-samba4，记得顺序别搞错

- luci-app-dockerman 和 luci-app-docker 不能同时编译，同时编译会编译失败
- 编译luci-app-dockerman或者luci-app-docker，首先要在Global build settings ---> Enable IPv6 support in packages (NEW)（选上）

- luci-app-autotimeset 和 luci-app-autoreboot 不能同时编译，同时编译会编译失败

- luci-app-ddnsto  如果有兼容性问题，安装好固件后执行 `/etc/init.d/ddnsto enable` 命令，这个插件是由两部分组成的，有一部分在Network --->里面默认自动选择的，如果你不需要这个插件，又不想默选择这个的话，在.config的配置文件里面加入一句 `# CONFIG_PACKAGE_ddnsto is not set` 就行，一般不是太小的闪存机子都不需要理会这个东西的，x86的除外，其他机子编译时候增加这个插件会有编译失败风险，实在想用的话，就编译好固件后再用命令安装插件好了

