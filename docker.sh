#!/usr/bin/bash


sudo usermod -aG docker $USER
newgrp docker
getent group docker
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
sudo chown root:docker /var/run/docker.sock
sudo chmod 660 /var/run/docker.sock
sudo systemctl restart docker
