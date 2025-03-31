
###
 # @Author: Zhuoyuan He
 # @Date: 2025-03-27 17:52:47
 # @LastEditors: Zhuoyuan He
 # @LastEditTime: 2025-03-31 17:16:07
 # @FileName: install.sh
 # @Description: 
 # 
### 

# sudo add-apt-repository ppa:transmissionbt/ppa
sudo add-apt-repository ppa:ubuntuhandbook1/transmission -y
sudo apt update > /dev/null
sudo apt install transmission-daemon -y

sudo systemctl status transmission-daemon

