#!/bin/bash

_VPN=$(ps -C openvpn -F | sed -n '2 p' | awk '{print $(NF-0)}' | tr -d '()')

red="%{F#BF616A}"
green="%{F#A3BE8C}"

if [ "$_VPN" != "" ]; then
    echo " ${green}${_VPN}"
else
    echo "${red}No VPN"
fi
