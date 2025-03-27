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
echo "Hello, $USER. What would you like to do today?"
# if [ "$EUID" -ne 0 ]
#   then echo "Please run as root"
#   exit
# fi


# print system info
uname -a
cat /etc/os-release

# install dependencies
apt-get update

# install neofetch
apt-get install neofetch -y
neofetch

apt-install build-essential -y
apt-install cmake -y
apt-install git -y



