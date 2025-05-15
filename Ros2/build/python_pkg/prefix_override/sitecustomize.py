import sys
if sys.prefix == '/usr':
    sys.real_prefix = sys.prefix
    sys.prefix = sys.exec_prefix = '/home/michael/Documents/AGV/ros-learning/Ros2/install/python_pkg'
