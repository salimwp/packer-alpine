#!/bin/ash

apk add sudo

adduser -D --home /home/vagrant --shell /bin/ash vagrant
printf "vagrant\nvagrant\n" | passwd vagrant
adduser vagrant wheel
echo '%wheel ALL=(ALL) NOPASSWD:ALL' >/etc/sudoers.d/wheel

mkdir /home/vagrant/.ssh
chmod 700 /home/vagrant/.ssh
wget -qO /home/vagrant/.ssh/authorized_keys https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub
chmod 600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant:vagrant /home/vagrant/.ssh