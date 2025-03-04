#include "rclcpp/rclcpp.hpp"

int main(int ac, char **av){
    rclcpp::init(ac, av);
    auto node = std::make_shared<rclcpp::Node>("first_cpp");
    RCLCPP_INFO(node->get_logger(), "Hello from %s", node->get_name());
    rclcpp::spin(node);
    rclcpp::shutdown();
    return 0;
}