
###
 # @Author: Zhuoyuan He
 # @Date: 2025-03-28 14:38:21
 # @LastEditors: Zhuoyuan He
 # @LastEditTime: 2025-03-28 14:40:30
 # @FileName: install.sh
 # @Description: 
 # 
### 

#!/bin/bash

echo "installing docker"
sudo apt update > /dev/null
sudo apt install -y docker-compose

sudo pip3 install requests==2.31.0  --break-system-packages


