RPI การแพทย์
	- User : ubuntu
	- Pass : 123456
	- LAN : 192.168.30.72
	- WLAN : 192.168.30.48

RPI อุตสาหกรรม
	- User : ubuntu
	- Pass : ubuntu
	- LAN : 192.168.30.89
	- WLAN : null

Jetson ABU
	- User : jetson
	- Pass : jetson
	- LAN : 192.168.30.70
	- WLAN : null


# platform.io
URL=https://raw.githubusercontent.com/
sudo apt-get install python3.11-venv -y
SCRIPT=platformio/platformio-core-installer/master/get-platformio.py
wget ${URL}${SCRIPT} -O ./get-platformio.py
sudo python3 ./get-platformio.py

nano $HOME/.profile
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$PATH:$HOME/.local/bin"
fi

if [ -d "$HOME/.platformio/penv/bin" ] ; then
    PATH="$PATH:$HOME/.platformio/penv/bin"
fi
export PATH=$PATH:$HOME/.platformio/penv/bin:$HOME/.local/bin

#If unconnect ssh server
sudo apt remove openssh-server -y
sudo apt purge openssh-server -y
sudo rm -rf /etc/ssh
sudo reboot now
#After Reboot
sudo apt-get install openssh-server -y


#Before Burned Image
sudo apt-get update
sudo apt-get install net-tools -y
sudo apt-get install i2c-tools -y
sudo apt-get install htop -y
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt-cache policy docker-ce
sudo apt install docker-ce -y
sudo apt-get install xrdp -y


#wifi Connect


sudo nmcli device wifi connect KTC_RB_AGVAI password P@ssw0rd
sudo nmcli connection modify KTC_RB_AGVAI autoconnect yes


sudo apt-get install network-manager -y
sudo nmcli device wifi connect KTC_ROBOT password 12345678
sudo nmcli connection modify KTC_ROBOT autoconnect no
nmcli device set wlan0 autoconnect yes


#docker images
docker pull tiryoh/ros-desktop-vnc:noetic-arm64

#docker commit
docker commit ac66628cb575 ktc_ros/noetic:version1

#Docker Command with sudo -i OR root permission



sudo docker run -p 6080:80 -p 5900:5900 a6d3226f068f




sudo docker run -p 6080:80 -p 5900:5900 -e RESOLUTION=1280x720 -v /home/ubuntu/catkin_ws:/home/ubuntu/catkin_ws --device=/dev/video0 --device=/dev/video1  --device=/dev/ttyUSB0  --device=/dev/ttyUSB1 --device=/dev/ttyUSB2 --device=/dev/ttyUSB3 --device=/dev/i2c-1 --device=/dev/gpiochip0  --device=/dev/gpiochip1  --device=/dev/gpiochip2  --device=/dev/gpiochip3  --device=/dev/gpiochip4  --device=/dev/gpiomem0  --device=/dev/gpiomem1  --device=/dev/gpiomem2  --device=/dev/gpiomem3  --device=/dev/gpiomem4 a0cf3940cb79

sudo docker run -p 6080:80 -p 5900:5900 -e RESOLUTION=1280x720 -v /home/ubuntu/catkin_ws:/home/ubuntu/catkin_ws --device=/dev/i2c-1 --device=/dev/gpiochip0  --device=/dev/gpiochip1  --device=/dev/gpiochip2  --device=/dev/gpiochip3  --device=/dev/gpiochip4  --device=/dev/gpiomem0  --device=/dev/gpiomem1  --device=/dev/gpiomem2  --device=/dev/gpiomem3  --device=/dev/gpiomem4 6cfd166cc25e

rosrun teleop_twist_keyboard teleop_twist_keyboard.py _speed:=0.4 _turn:=0.6 _repeat_rate:=10.0
rosrun teleop_twist_keyboard teleop_twist_keyboard.py _speed:=0.2 _turn:=0.4 _repeat_rate:=10.0


sudo docker exec -it 8c6d21b92a0a /bin/bash #อุตสาหกรรม
sudo docker start laughing_joliot #อุตสาหกรรม
sudo docker stop laughing_joliot #อุตสาหกรรม

sudo docker commit 5bd8386838e5 ros-desktop-vnc:version1


sudo docker exec -it d44c3cf6472b /bin/bash #การแพทย์
sudo docker start relaxed_faraday #การแพทย์
sudo docker stop relaxed_faraday #การแพทย์


chmod +777 /dev/*

#After install Docker
sudo apt-get update
sudo apt-get install python3-venv -y
sudo apt-get install python3-pip -y
sudo apt-get install i2c-tools -y
sudo apt-get install ros-noetic-navigation -y
sudo apt-get install ros-noetic-teb-local-planner -y
sudo apt-get install ros-noetic-robot-localization -y
sudo apt-get install ros-noetic-rosserial-python -y
sudo apt-get install ros-noetic-teleop-twist-keyboard -y
sudo apt-get install ros-noetic-imu-tools -y
sudo apt-get install ros-noetic-laser-filters -y
sudo apt-get install ros-noetic-hector-mapping -y
sudo apt-get install ros-noetic-gmapping -y
sudo apt-get install ros-noetic-usb-cam -y
sudo apt-get install ros-noetic-image-view -y
sudo apt-get install nano -y
sudo apt-get install libzbar0 -y

rosrun teleop_twist_keyboard teleop_twist_keyboard.py


python3 -m pip install adafruit-circuitpython-bno08x
python3 -m pip install gpiod
python3 -m pip install PyYAML
python3 -m pip install pyzbar
python3 -m pip install Adafruit-Blinka
python3 -m pip install Adafruit-PureIO

python3 -m pip install adafruit-circuitpython-bno08x==1.2.5
python3 -m pip uninstall Adafruit-Blinka
python3 -m pip uninstall Adafruit-PureIO



python3 -m pip install adafruit-circuitpython-vl6180x

#catkin_config
cd /home/ubuntu/catkin_ws/ 
cd /home/jetson/catkin_ws/ 
echo $ROS_PACKAGE_PATH
# result: /path/to/mypkg:/opt/ros/melodic/share GOOD!
source devel/setup.bash

echo "source /opt/ros/noetic/setup.bash" >> ~/.profile
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
echo "source /home/ubuntu/catkin_ws/devel/setup.bash" >> ~/.profile
echo "source /home/ubuntu/catkin_ws/devel/setup.bash" >> ~/.bashrc



sudo nano /etc/systemd/system/autoruncommand.service

[Unit]
Description=My Service
After=network.target

[Service]
Type=simple
ExecStart=/home/jetson/autoruncommand.sh
Restart=always

[Install]
WantedBy=multi-user.target

sudo systemctl daemon-reload
sudo systemctl start autoruncommand
sudo systemctl enable autoruncommand

#Script
sudo nano autoruncommand.sh
#!/bin/bash
sudo nano ~/.bashrc
sudo nano ~/.profile
sudo chmod +777 /dev/ttyUSB*
sudo chmod +777 /dev/ttyACM*

sudo chmod +777 /home/jetson/autoruncommand.sh

sudo chmod +777 /dev/tty*
