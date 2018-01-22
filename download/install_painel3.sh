#!/bin/bash
apt-get install figlet -y
tput setaf 3 ; tput bold ; echo "===================================================================" ; tput sgr0
tput setaf 7 ; tput bold ; figlet -c Sousa Tips ; tput sgr0
tput setaf 3 ; tput bold ; echo "===================================================================" ; tput sgr0
sleep 3
echo ""
tput setaf 7 ; tput bold ; echo "INSTALAÇÃO DO PAINEL 3.0" ; 
tput setaf 7 ; tput bold ; echo "  POWERED | SOUSA TIPS" ; tput sgr0
sleep 3
echo ""
tput setaf 3 ; tput bold ; echo "=======> ATENÇÃO! <=======" ; tput sgr0
sleep 3
echo ""
tput setaf 7 ; tput setab 4 ; tput bold ; echo "• Sempre que solicitado [Y/N] escolha a opção Y (Sim para Todos)."
sleep 3
echo ""
echo "• Sempre que solicitado digite sempre a mesma senha de sua preferência" 
echo "(letras e números, não use caracteres especiais ou espaço)"
sleep 3
echo ""
echo "• Para a seleção do servidor, escolha apache2."
sleep 3
echo ""
echo "• Selecione Sim quando perguntado se deseja usar o" 
echo "dbconfig-common para configurar o banco de dados." ; tput sgr0
sleep 3
echo ""
tput setaf 3 ; tput bold ; read -n 1 -s -p "Aperte qualquer tecla para continuar..." ; echo "" ; echo "" ; tput sgr0
tput setaf 3 ; tput bold ; echo "COMEÇANDO A INSTALAÇÃO!" ; tput sgr0
echo ""
sleep 3
apt-get update && apt-get upgrade -y
apt-get install curl
apt-get install apache2
apt-get install php5 libapache2-mod-php5 php5-mcrypt
service apache2 restart
apt-get install mysql-server php5-mysql
mysql_install_db
mysql_secure_installation
apt-get install phpmyadmin
php5enmod mcrypt
service apache2 restart
ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin
apt-get install libssh2-1-dev libssh2-php
php -m |grep ssh2
service apache2 restart
sleep 4
dpkg-reconfigure tzdata
cd /var/www/html
wget http://174.138.58.91/download/painel3.zip
apt-get install unzip
unzip painel3.zip
rm painel3.zip index.html
clear
echo ""
echo ""
sleep 2
tput setaf 7 ; tput setab 4 ; tput bold ; printf '%35s%s%-20s\n' "COMPLETADO COM SUCESSO!" ; tput sgr0
sleep 5
echo ""
tput setaf 7 ; tput bold ; echo "CONTINUE A INSTALAÇÃO..." ; tput sgr0
sleep 5
clear
exit