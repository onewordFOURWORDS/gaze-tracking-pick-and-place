#!/usr/bin/env python3

import rospy
import math
# import the messages for reading the joint positions and sending joint commands
from sensor_msgs.msg import JointState
from trajectory_msgs.msg import JointTrajectory
from trajectory_msgs.msg import JointTrajectoryPoint
from std_msgs.msg import Header


if __name__ == '__main__':
	# initialize the node
	rospy.init_node('manual_initialization', anonymous = True)
	# add a publisher for sending joint position commands
	pos_pub = rospy.Publisher('/pos_joint_traj_controller/command', JointTrajectory, queue_size = 10)
	# set a 10Hz frequency for this loop
	loop_rate = rospy.Rate(10)

	# define a joint trajectory variable for sending the control commands
	pos_cmd = JointTrajectory()
	pos_cmd_point = JointTrajectoryPoint()
	# just a quick solution to complete the message template
	pos_cmd.joint_names.append('elbow_joint')
	pos_cmd.joint_names.append('shoulder_lift_joint')
	pos_cmd.joint_names.append('shoulder_pan_joint')
	pos_cmd.joint_names.append('wrist_1_joint')
	pos_cmd.joint_names.append('wrist_2_joint')
	pos_cmd.joint_names.append('wrist_3_joint')
	
	# initialize the position command to zero
	for joint_no in range(6):
		pos_cmd_point.positions.append(0.0)
	# set the ideal time to destination
	pos_cmd_point.time_from_start = rospy.Duration(1.0) # here one second 
	# just change the value of the command for the elbow joint
	pos_cmd_point.positions[0] = 1.5
	# just change the value of the command for the shoulder lift joint
	pos_cmd_point.positions[1] = -1.26
	# just change the value of the command for the shoulder pan joint
	pos_cmd_point.positions[2] = 1.0
	# just change the value of the command for the wrist 1 joint
	pos_cmd_point.positions[3] = -1.8
	# just change the value of the command for the wrist 2 joint
	pos_cmd_point.positions[4] = -1.38
	# just change the value of the command for the wrist 3 joint 
	pos_cmd_point.positions[5] = 0.0
	pos_cmd.points.append(pos_cmd_point)
	# define a message header	
	header = Header()
	
	while not rospy.is_shutdown():
		# update the header with the most recent time stamp
		header.stamp = rospy.Time.now()
		# use the most recent header in the position command message
		pos_cmd.header = header
		# publish the message
		pos_pub.publish(pos_cmd)
		# wait for 0.1 seconds until the next loop and repeat
		loop_rate.sleep()


