
###
 # @Author: Zhuoyuan He
 # @Date: 2025-04-01 16:20:04
 # @LastEditors: Zhuoyuan He
 # @LastEditTime: 2025-04-01 16:21:11
 # @FileName: install.sh
 # @Description: 
 # 
### 

echo "Installing wsddn..."

wget -qO- https://www.gershnik.com/apt-repo/conf/pgp-key.public \
  | gpg --dearmor \
  | sudo tee /usr/share/keyrings/gershnik.gpg >/dev/null

echo "deb" \
"[arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/gershnik.gpg]" \
"https://www.gershnik.com/apt-repo/" \
"base" \
"main" \
  | sudo tee /etc/apt/sources.list.d/wsddn.list >/dev/null

sudo apt update > /dev/null
sudo apt install wsddn

sudo ufw allow wsddn

sudo systemctl start wsddn
sudo systemctl status wsddn

echo "wsddn installed successfully."

