sudo su -
apt install -y bridge-utils gcc make

donwload_and_unzip(){
  wget https://github.com/SoftEtherVPN/SoftEtherVPN_Stable/releases/download/v4.29-9680-rtm/softether-vpnserver-v4.29-9680-rtm-2019.02.28-linux-x64-64bit.tar.gz
  tar -xvf softether-vpnserver-v4.29-9680-rtm-2019.02.28-linux-x64-64bit.tar.gz
}

make(){
  cd vpnserver/
  make && 1 && 1 && 1
  cd ../
}

run_soft_ether(){
  systemctl daemon-reload
  systemctl enable vpnserver.service
  systemctl start vpnserver.service
}

change_mode(){
  chmod 600 *
  chmod 700 vpncmd vpnserver
}

cd /tmp/

donwload_and_unzip
make

mv vpnserver/ /usr/local/ && cd $_/vpnserver
change_mode

run_soft_ether