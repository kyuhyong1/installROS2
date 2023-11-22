git clone https://github.com/eProsima/foonathan_memory_vendor.git
cd foonathan_memory_vendor
mkdir build && cd build
cmake ..
sudo cmake --build . --target install

git clone --recursive https://github.com/eProsima/Fast-DDS.git -b v2.0.x
cd Fast-DDS
mkdir build && cd build
cmake -DTHIRDPARTY=ON -DSECURITY=ON ..
sudo make install

echo 'export FASTRTPSGEN_DIR="/usr/local/bin/"' >> ~/.bashrc

sudo apt install openjdk-11-jdk
sudo apt install libfmt-dev libspdlog-dev

git clone https://github.com/gabime/spdlog.git
mkdir build&&cd build
cmake ..
make
sudo make install

mkdir -p ~/ros2_ws/src
cd ~/ros2_ws/src
git clone https://github.com/PX4/px4_ros_com.git
git clone https://github.com/PX4/px4_msgs.git
git clone https://github.com/kyuhyong1/micro-ROS-Agent.git -b foxy
git clone https://github.com/micro-ROS/micro_ros_msgs.git -b foxy

cd ~/ros2_ws
colcon build --symlink-install

cd ~
git clone https://github.com/eProsima/Micro-XRCE-DDS-Agent.git -b foxy
cd Micro-XRCE-DDS-Agent/
mkdir build&&cd build
cmake ..
make
sudo make install


