#!/bin/bash

# 要設定的 IP 與 netmask
IP1="192.168.81.1"
NETMASK1="255.255.255.0"

IP2="192.168.94.1"
NETMASK2="255.255.255.0"

# 目標網卡（你輸出的 ifconfig 顯示 bridge101、bridge100）
IFACE1="bridge101"
IFACE2="bridge100"

echo "Setting $IFACE1 to $IP1 ..."
sudo ifconfig $IFACE1 inet $IP1 netmask $NETMASK1

echo "Setting $IFACE2 to $IP2 ..."
sudo ifconfig $IFACE2 inet $IP2 netmask $NETMASK2

echo "Done."
