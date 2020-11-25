#!/bin/bash
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 425956BB3E31DF51
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 1C30362C0A53D5BB
echo "deb [by-hash=force] https://community-packages.deepin.com/deepin apricot main contrib non-free" | sudo tee  /etc/apt/sources.list.d/deepin.list
echo "deb https://community-store-packages.deepin.com/appstore eagle appstore" | sudo tee  /etc/apt/sources.list.d/deepin_appstore.list
codename=`cat /etc/lsb-release |grep DISTRIB_CODENAME|awk -F '=' '{print $2}'`
sudo apt update
sudo apt install -t $codename deepin-wine5 -fy
sudo apt clean
sudo apt install com.qq.weixin.deepin com.taobao.aliclient.qianniu.deepin com.qq.im.deepin com.taobao.wangwang.deepin
sudo rm -f /etc/apt/sources.list.d/deepin.list
sudo rm -f /etc/apt/sources.list.d/deepin_appstore.list
sudo apt update

#com.qq.weixin.deepin 微信
#ccom.qq.im.deepin QQ
#com.taobao.aliclient.qianniu.deepin 千牛工作台
#com.taobao.wangwang.deepin 阿里旺旺

#安装好要自己制作启动图标，运行如QQ是 /opt/apps/ccom.qq.im.deepin/files/run.sh
#其余同上
