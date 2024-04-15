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
sed -i '/CONFIG_FIRMWARE_INCLUDE_TCPDUMP/d' $1.config
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
sed -i '/CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_SERVER/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_CLIENT/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_CMD/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_VLMCSD/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_TTYD/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_MSD_LITE/d' $1.config
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
sed -i '/CONFIG_FIRMWARE_INCLUDE_REDSOCKS/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_SHADOWSOCKS/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_XRAY/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_V2RAY/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_TROJAN/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_SSOBFS/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_ADBYBY/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_DNSFORWARDER/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_SMARTDNS/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_ADGUARDHOME/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_ZEROTIER/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_ALIDDNS/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_DDNSTO/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_ALDRIVER/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_SQM/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_WIREGUARD/d' $1.config
sed -i '/CONFIG_FIRMWARE_INCLUDE_OC/d' $1.config
######################################################################
#以下选项是定义你需要的功能（y=集成,n=忽略），重新写入到.config文件
######################################################################
echo "CONFIG_FIRMWARE_INCLUDE_TCPDUMP=y" >> $1.config
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
echo "CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_SERVER=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_CLIENT=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_CMD=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_VLMCSD=y" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_TTYD=y" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_MSD_LITE=y" >> $1.config
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
echo "CONFIG_FIRMWARE_INCLUDE_REDSOCKS=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_SHADOWSOCKS=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_XRAY=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_V2RAY=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_TROJAN=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_SSOBFS=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_ADBYBY=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_DNSFORWARDER=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_SMARTDNS=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_ADGUARDHOME=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_ZEROTIER=y" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_ALIDDNS=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_DDNSTO=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_ALDRIVER=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_SQM=n" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_WIREGUARD=y" >> $1.config
echo "CONFIG_FIRMWARE_INCLUDE_OC=n" >> $1.config
