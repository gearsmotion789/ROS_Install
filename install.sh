# Install ROS Kinetic
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
sudo apt-get update
sudo apt-get install ros-kinetic-desktop-full
sudo rosdep init
rosdep update
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt install python-rosinstall python-rosinstall-generator python-wstool build-essential

# Install Gazebo
sudo apt-get install curl
curl -sSL http://get.gazebosim.org | sh

# Install MoveIt & samples
sudo apt-get install ros-kinetic-catkin python-catkin-tools
sudo apt-get install ros-kinetic-moveit
mkdir -p ~/a-ws/src
cd ~/a-ws/src
sudo apt-get install git
git clone -b kinetic-devel https://github.com/ros-planning/moveit_tutorials.git
git clone -b kinetic-devel https://github.com/ros-planning/panda_moveit_config.git
cd ..
echo "source ~/a-ws/devel/setup.bash" >> ~/.bashrc
sourc ~/.bashrc

# Install Atom Editor
sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update
sudo apt-get install atom

echo "INSTALLATION DONE! Restart your computer, then [catkin_make] in ~/a-ws"
