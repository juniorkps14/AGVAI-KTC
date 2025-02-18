sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

sudo apt install curl -y

curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

sudo apt update

sudo apt install ros-noetic-desktop -y

source /opt/ros/noetic/setup.bash

sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential -y

sudo apt install python3-rosdep -y

sudo rosdep init

rosdep update

cd /home/ubuntu/catkin_ws/ 
echo $ROS_PACKAGE_PATH
# result: /path/to/mypkg:/opt/ros/melodic/share GOOD!
source devel/setup.bash

mkdir catkin_ws
cd catkin_ws
mkdir src

catkin_make

echo "source /opt/ros/noetic/setup.bash" >> ~/.profile
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc

echo "source /home/ubuntu/catkin_ws/devel/setup.bash" >> ~/.profile
echo "source /home/ubuntu/catkin_ws/devel/setup.bash" >> ~/.bashrc

sudo nano ~/.bashrc
sudo nano ~/.profile

echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
source ~/.bashrc