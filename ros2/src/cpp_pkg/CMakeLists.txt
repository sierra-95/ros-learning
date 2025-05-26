cmake_minimum_required(VERSION 3.8)
project(cpp_pkg)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
#set(CMAKE_PREFIX_PATH "/opt/ros/humble" ${CMAKE_PREFIX_PATH})
find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)

add_executable(cpp_node src/first_node.cpp) #Exec src/file
ament_target_dependencies(cpp_node rclcpp) #Dependecies

install(TARGETS #Install the target
  cpp_node
  DESTINATION lib/${PROJECT_NAME}
)

ament_package()
