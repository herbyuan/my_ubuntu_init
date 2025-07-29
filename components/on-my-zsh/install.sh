
###
 # @Author: Zhuoyuan He
 # @Date: 2025-03-31 15:56:12
 # @LastEditors: Zhuoyuan He
 # @LastEditTime: 2025-07-29 15:44:02
 # @FileName: install.sh
 # @Description: 
 # 
### 

echo "installing on-my-zsh"

sudo apt update > /dev/null
sudo apt install -y curl
sudo apt install -y git
sudo apt install -y zsh

#!/bin/bash

if [ -n "$SUDO_USER" ]; then
  REAL_USER="$SUDO_USER"
  echo "脚本由 $REAL_USER 使用 sudo 执行"
else
  REAL_USER="$(whoami)"
  echo "脚本由 $REAL_USER 直接执行"
fi

# 后续可以使用 $REAL_USER 变量
echo "真实用户是: $REAL_USER"
USER_HOME=$(getent passwd "$REAL_USER" | cut -d: -f6)

ZSHRC="$USER_HOME/.zshrc"

# 安全检查：确认 .zshrc 存在
if [ ! -f "$ZSHRC" ]; then
  echo "❌ 找不到 $ZSHRC"
  exit 1
fi

# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sh -c "$(curl -fsSL https://gitee.com/mirrors/oh-my-zsh/raw/master/tools/install.sh)"

# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions  

git clone https://gitee.com/mirrors/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions 
https://gitee.com/mirrors/zsh-autosuggestions

# 执行查找并替换
sed -i.bak \
    "s|^[[:space:]]*# zstyle ':omz:update' mode disabled[[:space:]]*# disable automatic updates|zstyle ':omz:update' mode disabled  # disable automatic updates|" \
    "$ZSHRC"

echo "✅ 修改完成：$ZSHRC"
echo "📝 备份保存在：$ZSHRC.bak"

