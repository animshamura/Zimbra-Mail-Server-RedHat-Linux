#Setup yum repos and others 

yum -y install unzip net-tools sysstat openssh-clients perlcore libaio nmap-ncat libstdc++.so.6
getenforce
setenforce 0
getenforce
yum install wget
hostnamectl set-hostname mail
echo "192.168.0.14mail.rhel.lanmail " >> /etc/hosts
ping -c1 mail.rhel.lan
ping -c1 mail
ip addr
nmtui-edit ens33
systemctl stop postfix
systemctl disable postfix
yum remove postfix

#Download Zimbra

wget https://files.zimbra.com/downloads/8.8.15_GA/zcs8.8.15_GA_3869.RHEL7_64.20190918004220.t
tar xfz zcs-8.8.15_GA_3953.RHEL8_64.20200629025823.tgz
cd zcs-8.8.15_GA_3953.RHEL8_64.20200629025823/
ls

#Install Zimbra 

/install.sh