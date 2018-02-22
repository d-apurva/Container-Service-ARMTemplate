#!/bin/bash

echo "Your software installation script"
docker login --username  dishawani --password momisbest@123
docker run -d -it -p 9000:9000  -v /home/userdata:/click2cloud-dockm/data --name click2cloud-dockm-s2i dishawani/dockm

