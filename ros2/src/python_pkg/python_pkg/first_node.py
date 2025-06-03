#!/usr/bin/env python3
import rclpy
from rclpy.node import Node

#Node is a base class
class MyNode(Node):
    def __init__(self):
        super().__init__('first_py')
        self.counter_ = 0  # Initialize a counter
        self.get_logger().info('Hello ROS2 !')  # Log a message to the console
        self.create_timer(0.5, self.timer_callback)  # Create a timer that calls timer_callback every 0.5 seconds
    
    def timer_callback(self):
        self.counter_ += 1
        self.get_logger().info('Timer callback'+ str(self.counter_))  # Log the current value of the counter

def main(args=None):
    rclpy.init(args=args) #starts Ros2 communication
    #node = Node('first_py') #creates a node. Best practice: dont use  the word node to name, eg first_node
    #node.get_logger().info('Hello ROS2') #prints a message: Hello world in Ros2
    node = MyNode() #create an instance of MyNode class
    rclpy.spin(node) #keeps the node running: Allow the node to stay alive
    rclpy.shutdown() #stops Ros2 communication
    
if __name__ == '__main__':
    main()