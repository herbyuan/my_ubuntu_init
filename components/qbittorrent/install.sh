
###
 # @Author: Zhuoyuan He
 # @Date: 2025-03-27 17:48:56
 # @LastEditors: Zhuoyuan He
 # @LastEditTime: 2025-03-31 16:06:48
 # @FileName: install.sh
 # @Description: 
 # 
### 

sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y

sudo apt update > /dev/null

sudo apt install qbittorrent-nox -y

# /etc/systemd/system/qbittorrent-nox.service

