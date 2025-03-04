sudo apt update
sudo apt install terminator
sudo apt install python3-colcon-common-extensions
#Source ros & colcon autocomplete -> Use ~/.bashrc
source /opt/ros/humble/setup.bash
source /usr/share/colcon_argcomplete/hook/colcon-argcomplete.bash
#Make sure to source install/setup.bash
source /dir/install/setup.bash
#Build workspace
cd /dir && colcon build

#################################################
##Create python package
cd /dir/src && ros2 pkg create python_pkg --build-type ament_python --dependencies rclpy
##Compile package 
cd /dir && colcon build --packages-select python_pkg
#################################################
##Create cpp package
cd /dir/src && ros2 pkg create cpp_pkg --build-type ament_cmake --dependencies rclcpp
##Compile package
cd /dir && colcon build --packages-select cpp_pkg
##NB Colcon build builds all packages in workspace, --packages-select selects specific package