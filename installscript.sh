#!/bin/bash

echo "Your software installation script"
docker run -d -it -p 9000:9000  -v /home/userdata:/click2cloud-dockm/data  --name click2cloud-dockm-s2i click2cloud/hello-world


