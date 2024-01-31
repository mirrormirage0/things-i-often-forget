#Ubuntu 20.04 root user


    sudo apt update
    sudo apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
    sudo apt update
    sudo apt-get install docker-ce docker-ce-cli containerd.io
    docker run hello-world
    docker compose
 

nano wg.conf
mkdir /opt/wireguard
mv wg.conf /opt/wireguard/docker-compose.yml
cd /opt/wireguard/
docker compose up -d
docker ps -a
docker exec -it wireguard /app/show-peer 1 #mobile
docker exec -it wireguard /bin/bash
cat config/peer2/peer2.conf  #desktop
docker exec -it wireguard /app/show-peer 3 #others
