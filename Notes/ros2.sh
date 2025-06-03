#you can list nodes whcih are running
ros2 node list
#Get info on running nodes
ros2 node info /nodename
#rename a node at runtime to avoid name conflicts
ros2 run python_pkg first_node --ros-args --remap __node:=new_name
#or
ros2 run python_pkg first_node --ros-args -r __node:=new_name

#compiling once, then run multiple times
colcon build --symlink-install #or specific package colcon build --symlink-install --packages-select python_pkg
