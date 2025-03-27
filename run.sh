# ###
 # @Author: Zhuoyuan He
 # @Date: 2025-03-27 13:53:27
 # @LastEditors: Zhuoyuan He
 # @LastEditTime: 2025-03-27 13:53:34
 # @FileName: run.sh
 # @Description: 
 # 
### 

#!/bin/bash

# echo username
echo "Running script as [$USER]."
echo "Please make sure you have sudo permission."
# if [ "$EUID" -ne 0 ]
#   then echo "Please run as root"
#   exit
# fi

wget -qO- https://www.gershnik.com/apt-repo/conf/pgp-key.public \
  | gpg --dearmor \
  | sudo tee /usr/share/keyrings/gershnik.gpg >/dev/null

echo "deb" \
"[arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/gershnik.gpg]" \
"https://www.gershnik.com/apt-repo/" \
"base" \
"main" \
  | sudo tee /etc/apt/sources.list.d/wsddn.list >/dev/null

sudo apt update
sudo apt install wsddn



# # print system info
# uname -a
# cat /etc/os-release

# # install dependencies
# sudo apt update

# # install neofetch
# sudo apt-get install neofetch -y
# neofetch

# sudo apt install build-essential -y
# sudo apt install cmake -y
# sudo apt install git -y



