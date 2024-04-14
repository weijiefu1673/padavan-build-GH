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
sed -i '/CONFIG_FIRMWARE_INCLUDE_OPENVPN/d' TNAME.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_XUPNPD/d' TNAME.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_MINIDLNA/d' TNAME.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_FIREFLY/d' TNAME.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_FFMPEG_NEW/d' TNAME.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_TRANSMISSION/d' TNAME.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_TRANSMISSION_WEB_CONTROL/d' TNAME.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_ARIA/d' TNAME.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_ARIA_WEB_CONTROL/d' TNAME.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_SCUTCLIENT/d' TNAME.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_GDUT_DRCOM/d' TNAME.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_DOGCOM/d' TNAME.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_MINIEAP/d' TNAME.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_NJIT_CLIENT/d' TNAME.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_NAPT66/d' TNAME.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_SERVER/d' TNAME.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_CLIENT/d' TNAME.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_CMD/d' TNAME.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_VLMCSD/d' TNAME.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_DUMP1090/d' TNAME.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_RTL_SDR/d' TNAME.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_SOCAT/d' TNAME.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_SRELAY/d' TNAME.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_MENTOHUST/d' TNAME.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_FRPC/d' TNAME.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_FRPS/d' TNAME.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_TUNSAFE/d' TNAME.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_WIREGUARD/d' TNAME.config
######################################################################
#以下选项是定义你需要的功能（y=集成,n=忽略），重新写入到.config文件
######################################################################
echo "CONFIG_FIRMWARE_INCLUDE_OPENVPN=y" >> TNAME.config
echo "CONFIG_FIRMWARE_INCLUDE_XUPNPD=y" >> TNAME.config
echo "CONFIG_FIRMWARE_INCLUDE_MINIDLNA=n" >> TNAME.config
echo "CONFIG_FIRMWARE_INCLUDE_FIREFLY=n" >> TNAME.config
echo "CONFIG_FIRMWARE_INCLUDE_FFMPEG_NEW=n" >> TNAME.config
echo "CONFIG_FIRMWARE_INCLUDE_TRANSMISSION=n" >> TNAME.config
echo "CONFIG_FIRMWARE_INCLUDE_TRANSMISSION_WEB_CONTROL=n" >> TNAME.config
echo "CONFIG_FIRMWARE_INCLUDE_ARIA=n" >> TNAME.config
echo "CONFIG_FIRMWARE_INCLUDE_ARIA_WEB_CONTROL=n" >> TNAME.config
echo "CONFIG_FIRMWARE_INCLUDE_SCUTCLIENT=n" >> TNAME.config
echo "CONFIG_FIRMWARE_INCLUDE_GDUT_DRCOM=n" >> TNAME.config
echo "CONFIG_FIRMWARE_INCLUDE_DOGCOM=n" >> TNAME.config
echo "CONFIG_FIRMWARE_INCLUDE_MINIEAP=n" >> TNAME.config
echo "CONFIG_FIRMWARE_INCLUDE_NJIT_CLIENT=n" >> TNAME.config
echo "CONFIG_FIRMWARE_INCLUDE_NAPT66=y" >> TNAME.config
echo "CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_SERVER=n" >> TNAME.config
echo "CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_CLIENT=n" >> TNAME.config
echo "CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_CMD=n" >> TNAME.config
echo "CONFIG_FIRMWARE_INCLUDE_VLMCSD=y" >> TNAME.config
echo "CONFIG_FIRMWARE_INCLUDE_DUMP1090=n" >> TNAME.config
echo "CONFIG_FIRMWARE_INCLUDE_RTL_SDR=n" >> TNAME.config
echo "CONFIG_FIRMWARE_INCLUDE_SOCAT=y" >> TNAME.config
echo "CONFIG_FIRMWARE_INCLUDE_SRELAY=n" >> TNAME.config
echo "CONFIG_FIRMWARE_INCLUDE_MENTOHUST=n" >> TNAME.config
echo "CONFIG_FIRMWARE_INCLUDE_FRPC=n" >> TNAME.config
echo "CONFIG_FIRMWARE_INCLUDE_FRPS=n" >> TNAME.config
echo "CONFIG_FIRMWARE_INCLUDE_TUNSAFE=n" >> TNAME.config
echo "CONFIG_FIRMWARE_INCLUDE_WIREGUARD=y" >> TNAME.config