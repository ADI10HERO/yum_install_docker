clear
# checking updates
sudo yum check-update
# isntalling dependencies
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
# adding remote repo to fetch docker from
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
# install docker
sudo yum install -y docker

#start , enable and check status of the service
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker


## Installing docker-compose

# downloading docker compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
#change file permissions
sudo chmod +x /usr/local/bin/docker-compose
# verify docker-compose version
docker-compose --version


