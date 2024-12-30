#### Package
A **package** is an independent unit inside your app. This includes:

- Camera package
- Hardware control package
- Motion Planning package

#### Node
A **ROS2 node** is an independent executable that communicates with other nodes in the system by exchanging messages.

They communicate with each other **topics**, **services** and **parameters**

A node should have a single purpose.

#### Camera Package
Inside this package we can have the following nodes:

1. Camera driver: To program it and get frames from it
2. Image Processing - To take the frames and process them
3. Object Detection - To detect object.

#### Motion Planning
We can have the following nodes:
1. Motion Planning
2. Path correction

Now that we have nodes in our diffrent packages. They can communicate with each other:
camera driver -> Image Processing -> Path Correction -> Motion Planning

#### Note Better
1. All nodes should have unique names
2. Use cpp for nodes that require faster execution
3. More nodes means better fault tolerance, if 1 crashes, the rest still run.