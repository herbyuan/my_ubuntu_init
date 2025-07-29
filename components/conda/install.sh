
###
 # @Author: Zhuoyuan He
 # @Date: 2025-03-31 17:18:20
 # @LastEditors: Zhuoyuan He
 # @LastEditTime: 2025-07-29 11:40:18
 # @FileName: install.sh
 # @Description: 
 # 
### 

#!/bin/bash
echo "downloading conda"
cd "$(dirname "$0")"
wget https://mirrors.tuna.tsinghua.edu.cn/anaconda/archive/Anaconda3-5.3.1-Linux-x86_64.sh

echo "Downloading conda finished, now installing conda"

if [ -n "$SUDO_USER" ]; then
  REAL_USER="$SUDO_USER"
  echo "脚本由 $REAL_USER 使用 sudo 执行"
else
  REAL_USER="$(whoami)"
  echo "脚本由 $REAL_USER 直接执行"
fi

echo "Install it manually"