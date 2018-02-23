#!/bin/bash

echo "Your software installation script"

sudo mkdir -p /home/$USER/.docker/
sudo rm -rf ~/.docker/config.json
sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
sudo chmod g+rwx "/home/$USER/.docker" -R
sudo cat > /home/$USER/.docker/config.json << EOF
{
        "auths": {
                "https://index.docker.io/v1/": {
                        "auth": "ZGlzaGF3YW5pOm1vbWlzYmVzdEAxMjM="
                }
        },
        "HttpHeaders": {
                "User-Agent": "Docker-Client/18.02.0-ce (linux)"
        }
}
EOF

chmod 600 /home/$USER/.docker/config.json

docker run -d -it -p 9000:9000  -v /home/userdata:/click2cloud-dockm/data --name click2cloud-dockm-s2i dishawani/dockm
