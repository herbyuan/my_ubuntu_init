#!/bin/bash
###
 # @Author: Zhuoyuan He
 # @Date: 2025-03-27 17:24:52
 # @LastEditors: Zhuoyuan He
 # @LastEditTime: 2025-03-27 17:24:58
 # @FileName: update_mihomo_conf.sh
 # @Description: 
 # 
### 

# 下载文件
wget -O /etc/mihomo/config.yaml https://subs.wallesspku.space/clash/zhuoyuan@pku.edu.cn/26twatbym3

file="/etc/mihomo/config.yaml"
# 替换文本
sed -i 's/external-controller: 127.0.0.1:9090/external-controller: 0.0.0.0:9090/g' $file
sed -i 's/^allow-lan:.*$/allow-lan: true/' "$file"

# 替换或者追加 secret 行
if grep -q "^secret:" "$file"; then
  # 如果文件中存在 secret: 行，替换为 secret: "Cc991226"
  sed -i 's/^secret:.*$/secret: "Cc991226"/' "$file"
else
  # 在第一行前插入新行
  sed -i '1s/^/secret: "Cc991226"\n/' $file
fi

chmod 775 /etc/mihomo/config.yaml

systemctl restart mihomo