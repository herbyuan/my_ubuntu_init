
###
 # @Author: Zhuoyuan He
 # @Date: 2025-03-27 17:58:41
 # @LastEditors: Zhuoyuan He
 # @LastEditTime: 2025-03-28 14:34:08
 # @FileName: install.sh
 # @Description: 
 # 
### 

echo "installing alist"
cd "$(dirname "$0")"
chmod 775 ./alist

mkdir -p /etc/alist
cp ./alist /etc/alist/alist

echo "installed alist to /etc/alist/"

sudo cp ./alist.service /etc/systemd/system/alist.service
sudo systemctl enable alist
