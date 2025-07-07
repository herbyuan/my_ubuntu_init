# ###
 # @Author: Zhuoyuan He
 # @Date: 2025-03-27 17:27:12
 # @LastEditors: Zhuoyuan He
 # @LastEditTime: 2025-03-27 17:33:24
 # @FileName: install.sh
 # @Description: 
 # 
###

#!/bin/bash

echo "installing mihomo"

# cd 当前文件的位置
cd "$(dirname "$0")"

sudo cp -r mihomo /etc/
sudo cp mihomo/mihomo /usr/bin/
sudo cp mihomo/mihomo.service /etc/systemd/system/

sudo rm /etc/mihomo/mihomo
sudo bash /etc/mihomo/update_mihomo_conf.sh
sudo chmod 775 /usr/bin/mihomo

sudo systemctl enable mihomo
sudo systemctl start mihomo

echo "mihomo installed" 
