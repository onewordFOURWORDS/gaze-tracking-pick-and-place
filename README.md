# Robotic Gaze Based Pick and Place

UNCW Robotics Lab

A gaze based project for the control of a robotic arm in pick and place applications.


- ROS Noetic
- UR5 Robotic Arm
- Ubuntu 20.04
- Intel Realsense D415
- Gazepoint GP3

By displaying an image of the robot work area on a seperate screen we are able to use the users gaze data to determine an object (tennis ball) that they wish to manipulate. The current iteration of the object detection is a simple blob detection algorithm from OpenCV that is tuned to detect all tennis balls in frame. For the object selection itself it uses a simple fixation parameter provided by the Gazepoint GP3, and a time parameter that can be modified within the code.


Below you can see a flow diagram of the different system components, their published topics, and which nodes subscribe to those topics.
![alt text](https://i.imgur.com/NUsvoR8.jpg)

Future Work:
Move over the the microsoft Hololens headset for mixed reality and user communication. This will allow for free head tracking and ideally improve user experience as well as allowing for more diverse applications.
