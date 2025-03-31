
###
 # @Author: Zhuoyuan He
 # @Date: 2025-03-31 17:18:20
 # @LastEditors: Zhuoyuan He
 # @LastEditTime: 2025-03-31 17:18:24
 # @FileName: install.sh
 # @Description: 
 # 
### 

#!/bin/bash
echo "downloading conda"
cd "$(dirname "$0")"
wget https://mirrors.tuna.tsinghua.edu.cn/anaconda/archive/Anaconda3-5.3.1-Linux-x86_64.sh
echo "conda downloaded, please install it manually"
