sudo chmod +x network.sh
./network.sh
echo "Ifaces configured."

sudo brctl addbr br0
sudo brctl addif br0 ens4 ens5
sudo ifconfig br0 up
echo "Bridge between in-out interfaces configured and up."

sudo modprobe br_netfilter
echo "Loading kernel module for iptables setting on a bridge."
