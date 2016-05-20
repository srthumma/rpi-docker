wget -O /tmp/docker-hypriot_1.8.2-1_armhf.deb http://downloads.hypriot.com/docker-hypriot_1.8.2-1_armhf.deb
sudo dpkg -i /tmp/docker-hypriot_1.8.2-1_armhf.deb
rm -f /tmp/docker-hypriot_1.8.2-1_armhf.deb
sudo sh -c 'usermod -aG docker $SUDO_USER'
sudo systemctl enable docker.service
