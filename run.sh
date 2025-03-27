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
sudo apt update

# install neofetch
sudo apt-get install neofetch -y
neofetch

sudo apt install build-essential -y
sudo apt install cmake -y
sudo apt install git -y



