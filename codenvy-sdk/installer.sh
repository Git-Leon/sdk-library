
wget -qO- https://get.docker.com/ | sh
sudo groupadd docker
sudo usermod -aG docker $(whoami)
docker run -it eclipse/che start
echo "If docker failed to run, the system may be need to be restarted."
echo "When the machine reboots, execute the following command."
echo "`run -it eclipse/che start`"