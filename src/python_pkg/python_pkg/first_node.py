#!/usr/bin/env python3
import rclpy
from rclpy.node import Node
def main(args=None):
    rclpy.init(args=args) #starts Ros2 communication
    node = Node('first_py') #creates a node. Best practice: dont use  the word node to name, eg first_node
    node.get_logger().info('Hello ROS2') #prints a message: Hello world in Ros2
    rclpy.spin(node) #keeps the node running: Allow the node to stay alive
    rclpy.shutdown() #stops Ros2 communication
    
if __name__ == '__main__':
    main()