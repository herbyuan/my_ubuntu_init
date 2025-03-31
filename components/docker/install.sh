
###
 # @Author: Zhuoyuan He
 # @Date: 2025-03-28 14:38:21
 # @LastEditors: Zhuoyuan He
 # @LastEditTime: 2025-03-31 17:59:50
 # @FileName: install.sh
 # @Description: 
 # 
### 

#!/bin/bash

echo "installing docker"
sudo apt update > /dev/null
sudo apt install -y docker-compose

sudo pip install 'urllib3<2' --break-system-packages
sudo pip3 install requests==2.31.0  --break-system-packages

echo "visit https://docker.zhuoyuan-he.cn/ for more information"
