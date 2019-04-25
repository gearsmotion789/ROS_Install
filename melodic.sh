# Install ROS Kinetic
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
sudo apt update
sudo apt install ros-melodic-desktop-full
sudo rosdep init
rosdep update
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt install python-rosinstall python-rosinstall-generator python-wstool build-essential

# Install MoveIt & samples
rosdep update
sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get install ros-melodic-catkin python-catkin-tools
sudo apt-get install ros-melodic-moveit
mkdir -p ~/a-ws/src
cd ~/a-ws/src
sudo apt-get install git
git clone -b kinetic-devel https://github.com/ros-planning/moveit_tutorials.git
git clone -b kinetic-devel https://github.com/ros-planning/panda_moveit_config.git
cd ..
catkin_make
echo "source ~/a-ws/devel/setup.bash" >> ~/.bashrc
sourc ~/.bashrc

# Install Atom Editor
sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update
sudo apt-get install atom

# Install Gazebo
sudo apt-get install curl
curl -sSL http://get.gazebosim.org | sh

echo "INSTALLATION DONE!"
