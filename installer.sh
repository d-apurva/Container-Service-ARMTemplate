#!/bin/bash

echo "Your software installation script"

sudo mkdir -p /home/dockm/.docker/
rm -rf ~/.docker/config.json
auth="ZGlzaGF3YW5pOm1vbWlzYmVzdEAxMjM="
# sudo chown $(whoami):docker /home/$(whoami)/.docker/config.json
sudo cat > /home/dockm/.docker/config.json << EOF
{
        "auths": {
                "https://index.docker.io/v1/": {
                        "auth": "$auth"
                }
        },
        "HttpHeaders": {
                "User-Agent": "Docker-Client/18.02.0-ce (linux)"
        }
}
EOF

chmod 600 /home/dockm/.docker/config.json

docker run -d -it -p 9000:9000  -v /home/userdata:/click2cloud-dockm/data --name click2cloud-dockm-s2i dishawani/dockm
