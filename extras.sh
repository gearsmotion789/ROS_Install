# https://github.com/udacity/RoboND-Perception-Project
cd ~/a-ws/src
git clone https://github.com/udacity/RoboND-Perception-Project.git
cd ..
rosdep install --from-paths src --ignore-src --rosdistro=kinetic -y
catkin_make

echo "export GAZEBO_MODEL_PATH=~/a-ws/src/RoboND-Perception-Project/pr2_robot/models:$GAZEBO_MODEL_PATH" >> ~/.bashrc
source ~/.bashrc

cd ~/a-ws/src/RoboND-Perception-Project/pr2_robot/scripts
chmod u+x pr2_safe_spawner.sh
