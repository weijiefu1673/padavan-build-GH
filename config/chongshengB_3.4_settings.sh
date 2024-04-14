#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt

cd configs/templates
################################################################################################
#因不同型号配置功能不一样，所以先把配置项删除，如果你自己要添加其他的，也要写上删除这一条，切记！！！
################################################################################################
sed -i '/CONFIG_FIRMWARE_INCLUDE_OPENVPN/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_SSWAN/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_XUPNPD/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_MINIDLNA/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_FIREFLY/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_FFMPEG_NEW/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_TRANSMISSION/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_TRANSMISSION_WEB_CONTROL/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_ARIA/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_ARIA_WEB_CONTROL/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_SCUTCLIENT/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_GDUT_DRCOM/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_DOGCOM/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_MINIEAP/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_NJIT_CLIENT/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_NAPT66/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_SHADOWSOCKS/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_SSSERVER/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_SERVER/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_CLIENT/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_CMD/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_VLMCSD/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_TTYD/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_LRZSZ/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_HTOP/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_NANO/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_IPERF3/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_DUMP1090/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_RTL_SDR/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_MTR/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_SOCAT/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_SRELAY/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_MENTOHUST/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_FRPC/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_FRPS/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_TUNSAFE/d' $1.config
######################################################################
#以下选项是定义你需要的功能（y=集成,n=忽略），重新写入到.config文件
######################################################################
echo "CONFIG_FIRMWARE_INCLUDE_OPENVPN=y" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_SSWAN=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_XUPNPD=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_MINIDLNA=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_FIREFLY=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_FFMPEG_NEW=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_TRANSMISSION=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_TRANSMISSION_WEB_CONTROL=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_ARIA=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_ARIA_WEB_CONTROL=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_SCUTCLIENT=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_GDUT_DRCOM=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_DOGCOM=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_MINIEAP=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_NJIT_CLIENT=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_NAPT66=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_SHADOWSOCKS=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_SSSERVER=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_SERVER=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_CLIENT=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_CMD=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_VLMCSD=y" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_TTYD=y" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_LRZSZ=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_HTOP=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_NANO=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_IPERF3=y" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_DUMP1090=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_RTL_SDR=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_MTR=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_SOCAT=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_SRELAY=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_MENTOHUST=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_FRPC=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_FRPS=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_TUNSAFE=n" >> $1.config
