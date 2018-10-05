if [ $1 == "user" ]
then
sudo sh -c 'cat append_user.sh >> /etc/network/interfaces.d/50-cloud-init.cfg'
sudo sh -c '/etc/init.d/networking restart'
exit 1
fi
fi
sudo sh -c 'cat append.sh >> /etc/network/interfaces.d/50-cloud-init.cfg'
sudo sh -c '/etc/init.d/networking restart'
