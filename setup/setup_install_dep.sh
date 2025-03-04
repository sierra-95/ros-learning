#-------🔹 ROS 2 Packages (For AGV Control & Mapping)-------
#SLAM & Navigation
sudo apt update && sudo apt install -y \
  ros-humble-navigation2 \
  ros-humble-nav2-bringup \
  ros-humble-slam-toolbox

#RTAB-Map (For Camera + LiDAR Mapping)
sudo apt install -y \
  ros-humble-rtabmap-ros

#Camera Drivers (For USB/Webcam)
sudo apt install -y \
  ros-humble-image-pipeline \
  ros-humble-cv-bridge

#--------Python Libraries (For AI & Object Detection)------
#OpenCV (For Image Processing)
pip install opencv-python opencv-contrib-python
#YOLO (For Object Detection)
pip install ultralytics
#FastAPI (For Cloud Backend)
pip install fastapi uvicorn
#PostgreSQL Adapter (For Storing Maps in a Database)
pip install psycopg2
#For Depth Perception
pip install depthai
