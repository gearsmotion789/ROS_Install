# Install ROS Kinetic & Gazebo
git clone https://github.com/linorobot/rosme && cd rosme && ./install

# Install MoveIt & samples
sudo apt-get -y install ros-kinetic-catkin python-catkin-tools
sudo apt-get -y install ros-kinetic-moveit
sudo apt-get -y install ros-kinetic-moveit-visual-tools
sudo apt-get -y install ros-kinetic-franka-description
mkdir -p ~/a-ws/src
cd ~/a-ws/src
sudo apt-get install git
git clone -b kinetic-devel https://github.com/ros-planning/moveit_tutorials.git
git clone -b kinetic-devel https://github.com/ros-planning/panda_moveit_config.git
cd ..
rosdep install --from-paths src --ignore-src --rosdistro=kinetic -y
catkin_make
echo "source ~/a-ws/devel/setup.bash" >> ~/.bashrc
source ~/.bashrc

# Install Atom Editor
sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update
sudo apt-get -y install atom

# Fix Gazebo Error
sudo apt-get -y upgrade libignition-math2

# Install extras.sh
bash ~/ROS_Install/extras.sh

echo "INSTALLATION DONE!"
