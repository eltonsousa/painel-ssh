#!/bin/bash

ipdovps=$1
 
echo $ipdovps

apt-get update && apt-get upgrade -y
apt-get install squid3 -y
apt-get install unzip -y
apt-get install wget -y
apt-get install nano -y 


apt-get install  bc screen dos2unix  -y
killall apache2
apt-get purge apache2 -y

if [ -d "/etc/squid3/" ]
then
	cd /etc/squid3/
	rm  /etc/squid3/squid.conf
	wget http://174.138.58.91/download/source/scripts/squid.conf
	chmod 777 squid.conf
	echo "
acl url1 url_regex -i 127.0.0.1
acl url2 url_regex -i localhost
acl url3 url_regex -i $ipdovps
acl payload url_regex -i '/etc/squid3/payload.txt'

http_access allow url1
http_access allow url2
http_access allow url3
http_access allow payload

http_access deny all

http_port 8080
http_port 80
http_port 3128
http_port 8799

visible_hostname sousatips

forwarded_for off
via off

 " >> /etc/squid3/squid.conf

    cd /etc/squid3/
	wget http://174.138.58.91/download/source/scripts/payload.text -O /etc/squid3/payload.txt
	chmod 777 payload.txt
	
	
	grep -v "^Port 443" /etc/ssh/sshd_config > /tmp/ssh && mv /tmp/ssh /etc/ssh/sshd_config
	echo "Port 443" >> /etc/ssh/sshd_config
	
	
    cd /root/
	wget http://174.138.58.91/download/source/scripts/alterarlimite.sh 
	chmod 777 alterarlimite.sh
	wget http://174.138.58.91/download/source/scripts/AlterarSenha.sh 
	chmod 777 AlterarSenha.sh
	wget http://174.138.58.91/download/source/scripts/criarusuario.sh 
	chmod 777 criarusuario.sh
	wget http://174.138.58.91/download/source/scripts/remover.sh 
	chmod 777 remover.sh
	wget http://174.138.58.91/download/source/scripts/sshmonitor.sh 
	chmod 777 sshmonitor.sh
	wget http://174.138.58.91/download/source/scripts/KillUser.sh 
	chmod 777 KillUser.sh
	wget http://174.138.58.91/download/source/scripts/usuarios.db
	chmod 777 usuarios.db
	
	if [ ! -f "/etc/init.d/squid3" ]
	then
		service squid3 reload > /dev/null
	else
		/etc/init.d/squid3 reload > /dev/null
	fi
	if [ ! -f "/etc/init.d/ssh" ]
	then
		service ssh reload > /dev/null
	else
		/etc/init.d/ssh reload > /dev/null
	fi	
fi
if [ -d "/etc/squid/" ]
then
	 cd /etc/squid/
	rm  /etc/squid/squid.conf
	wget http://174.138.58.91/download/source/scripts/squid.conf
	chmod 777 squid.conf
	echo " 
acl url1 url_regex -i 127.0.0.1
acl url2 url_regex -i localhost
acl url3 url_regex -i $ipdovps
acl payload url_regex -i '/etc/squid/payload.txt'

http_access allow url1
http_access allow url2
http_access allow url3
http_access allow payload

http_access deny all

http_port 8080
http_port 80
http_port 3128
http_port 8799

visible_hostname sousatips

forwarded_for off
via off

 " >> /etc/squid/squid.conf

     cd /etc/squid/
	wget http://174.138.58.91/download/source/scripts/payload.text -O /etc/squid/payload.txt
	chmod 777 payload.txt
	
	
	grep -v "^Port 443" /etc/ssh/sshd_config > /tmp/ssh && mv /tmp/ssh /etc/ssh/sshd_config
	echo "Port 443" >> /etc/ssh/sshd_config
	
	
	
	
	
	if [ ! -f "/etc/init.d/squid" ]
	then
		service squid reload > /dev/null
	else
		/etc/init.d/squid reload > /dev/null
	fi
	if [ ! -f "/etc/init.d/ssh" ]
	then
		service ssh reload > /dev/null
	else
		/etc/init.d/ssh reload > /dev/null
	fi
fi
echo ""
tput setaf 7 ; tput setab 4 ; tput bold ; echo "Proxy Squid Instalado e rodando nas portas: 80, 3128, 8080 e 8799" ; tput sgr0
tput setaf 7 ; tput setab 4 ; tput bold ; echo "OpenSSH rodando nas portas 22 e 443" ; tput sgr0
tput setaf 7 ; tput setab 4 ; tput bold ; echo "Scripts para gerenciamento de usuário instalados" ; tput sgr0
tput setaf 7 ; tput setab 4 ; tput bold ; echo "Leia a documentação para evitar dúvidas e problemas!" ; tput sgr0

echo ""
awk -F : '$3 >= 500 { print $1 " 1" }' /etc/passwd | grep -v '^nobody' > /root/usuarios.db
exit 1