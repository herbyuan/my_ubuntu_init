
###
 # @Author: Zhuoyuan He
 # @Date: 2025-03-27 17:43:23
 # @LastEditors: Zhuoyuan He
 # @LastEditTime: 2025-03-31 18:05:19
 # @FileName: useful_scripts.sh
 # @Description: 
 # 
### 
# set proxy
export http_proxy=http://127.0.0.1:7890
export https_proxy=http://127.0.0.1:7890

chsh -s /bin/zsh

# list all users and their groups
getent passwd | awk -F: '{print $1, $4}' | while read user gid; do
    groups=$(getent group | awk -F: -v gid="$gid" '$3 == gid {print $1}')
    echo "$user: $groups"
done

# add user[usr] to group[root]
usermod -aG root usr

# change owner of a folder
chown -R usr:grp /path/to/folder

chmod 775 /path/to/folder

# set the setgid bit
chmod g+s /path/to/folder

# current folder size
du -sh

# disk usage
df -h

sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-9 70
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-10 80
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-11 90

# all g++ alternatives
update-alternatives --display g++

# set g++ version
sudo update-alternatives --config g++

# show docker images
docker images

# show docker containers
docker ps -a

# useful fetch tool
# glances

# show groups of a user
groups usr


