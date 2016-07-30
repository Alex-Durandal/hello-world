sudo apt-get install vpnc git #安装vpn和git
sudo apt-get remove unity-webapps-common #删除Amazon链接
#sudo apt-get remove libreoffice-common  #删除libreoffice
sudo apt-get install vim #安装vim
#安装Oracle java
sudo add-apt-repository ppa:webupd8team/java    
sudo apt-get update    
sudo apt-get install oracle-java8-installer   
sudo rm /usr/share/upstart/sessions/jayatana.conf #删除openjdk的配置
#安装sublime text 3 默认命令行调用为subl
sudo add-apt-repository ppa:webupd8team/sublime-text-3    
sudo apt-get update    
sudo apt-get install sublime-text 
#安装chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb 
sudo apt-get install libappindicator1 libindicator7  
sudo dpkg -i google-chrome-stable_current_amd64.deb   
sudo apt-get -f install
#安装mysql
sudo apt-get install mysql-server
sudo apt-get install mysql-client
sudo apt-get install libmysqlclient-dev
#安装mysql python驱动
wget http://dev.mysql.com/get/Downloads/Connector-Python/mysql-connector-python-2.1.1.tar.gz
tar -zxvf mysql-connector-python-2.1.1.tar.gz
sudo python setup.py install
#下载django
sudo apt-get install python-django
