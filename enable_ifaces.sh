#!/bin/sh
cat << EOF >> /etc/network/interfaces
auto ens4
iface ens4 inet dhcp
auto ens5
iface ens5 inet dhcp
EOF
ifup ens4
ifup ens5
