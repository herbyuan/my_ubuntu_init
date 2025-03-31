
###
 # @Author: Zhuoyuan He
 # @Date: 2025-03-31 15:56:12
 # @LastEditors: Zhuoyuan He
 # @LastEditTime: 2025-03-31 16:04:18
 # @FileName: install.sh
 # @Description: 
 # 
### 

echo "installing on-my-zsh"

sudo apt update > /dev/null
sudo apt install -y curl
sudo apt install -y git
sudo apt install -y zsh

# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sh -c "$(curl -fsSL https://gitee.com/mirrors/oh-my-zsh/raw/master/tools/install.sh)"

# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions  

git clone https://gitee.com/mirrors/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions 
https://gitee.com/mirrors/zsh-autosuggestions
