#!/bin/bash  
  
# 更新软件包列表  
sudo apt update  
  
# 安装依赖包  
sudo apt install -y software-properties-common  
  
# 添加 deadsnakes PPA，以获取 Python 3.8  
sudo add-apt-repository ppa:deadsnakes/ppa  
  
# 再次更新软件包列表  
sudo apt update  
  
# 安装 Python 3.8  
sudo apt install -y python3.8  
  
# 安装 pip3  
sudo apt install -y python3-pip  
  
# 链接 pip3 到 Python 3.8 的 pip  
sudo update-alternatives --install /usr/bin/pip3 pip3 /usr/bin/pip3.8 1  
  
# 设置 pip3 默认为 Python 3.8 的 pip  
sudo update-alternatives --set pip3 /usr/bin/pip3.8  
  
echo "Python 3.8 和 pip3 安装完成！"
