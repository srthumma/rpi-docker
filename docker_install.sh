wget -O /tmp/docker-hypriot_1.8.2-1_armhf.deb http://downloads.hypriot.com/docker-hypriot_1.8.2-1_armhf.deb
sudo dpkg -i /tmp/docker-hypriot_1.8.2-1_armhf.deb
rm -f /tmp/docker-hypriot_1.8.2-1_armhf.deb

curl -s https://packagecloud.io/install/repositories/Hypriot/Schatzkiste/script.deb.sh | sudo bash
sudo apt-get install docker-compose=1.6.2-28

sudo sh -c 'usermod -aG docker $SUDO_USER'
sudo systemctl enable docker.service
