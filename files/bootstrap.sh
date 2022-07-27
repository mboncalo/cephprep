#!/bin/bash
#apt update -y
#apt install -y ca-certificates     curl     gnupg     lsb-release     lvm2
#mkdir -p /etc/apt/keyrings
#curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
#echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
#apt install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
#apt install ntp -y
sed -i 's/ubuntu/ca/g' /etc/ntp.conf
systemctl enable docker
systemctl enable ntp
service docker start
service ntp start
#apt install -y cephadm
#cephadm add-repo --release quincy
sed -i 's/#PermitRootogin/PermitRootLogin/;s/prohibit-password/yes/' /etc/ssh/sshd_config
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
service sshd restart
echo "192.168.1.38 ha01
192.168.1.31 ha02
192.168.1.199 ha03" >> /etc/hosts
