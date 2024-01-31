#Ubuntu 22.04 works best with root user

# firewall ufw

    sudo ufw enable

    sudo ufw allow 22 #ssh - change in /etc/ssh/sshd_config for ubuntu 20.04/22.04 . For higher versions it requires some other bypass

    sudo ufw allow 51820 #wireguard - change SERVERPORT and PORTS if needed


# docker and docker compose setup

    sudo apt update
    
    sudo apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common nano
    
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
    
    sudo apt update
    
    sudo apt-get install docker-ce docker-ce-cli containerd.io
    
    docker run hello-world
    
    docker compose

 
# configure wireguard

    
    mkdir /opt/wireguard

    cd /opt/wireguard/
    
    nano /opt/wireguard/docker-compose.yml
    
    `version: "2.1"
    services:
      wireguard:
        image: linuxserver/wireguard
        container_name: wireguard
        cap_add:
          - NET_ADMIN
          - SYS_MODULE
        environment:
          - PUID=1000
          - PGID=1000
          - TZ=Etc/UTC
          - SERVERURL=auto #optional
          - SERVERPORT=51820 #optional
          - PEERS=10 #optional
          - PEERDNS=auto #optional
          - INTERNAL_SUBNET=10.13.13.0 #optional
        volumes:
          - /opt/wireguard-server/config:/config
          - /lib/modules:/lib/modules
        ports:
          - 51820:51820/udp
        sysctls:
          - net.ipv4.conf.all.src_valid_mark=1
        restart: unless-stopped`    
    
    docker compose up -d
    
    docker ps -a
    
    docker exec -it wireguard /app/show-peer 1 #mobile barcode
    
    docker exec -it wireguard /bin/bash
    
    cat config/peer2/peer2.conf  #desktop conf file
    
    docker exec -it wireguard /app/show-peer 3 #others
