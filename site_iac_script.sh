#bin/bash

echo'Atualição e atualização servidor, apache e unzip'

sudo apt update -y

sudo apt install upgrade -y

sudo apt install apache2 -y

sudo apt install unzip -y

echo'Baixar site e copiar à pasta'

cd /tmp/

sudo wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd /tmp/linux-site-dio-main/

cp -R * /var/www/html/

echo'Reinicialição dos serviços'
sudo systemctl restart smbd
sudo systemctl enable smbd



