#!/usr/bin/env python3

import rospy
import math

# import the plan message
from ur5e_control.msg import Plan
from geometry_msgs.msg import Twist
from std_msgs.msg import UInt8
from robot_vision_lectures.msg import SphereParams

import tf2_ros
from tf.transformations import *
import tf2_geometry_msgs

def add_point(plan, x, y, z, roll, pitch, yaw, mode):
	# define the components of the plan
	plan_point = Twist()
	point_mode = UInt8()
	# update the values
	plan_point.linear.x = x
	plan_point.linear.y = y
	plan_point.linear.z = z	
	plan_point.angular.x = roll
	plan_point.angular.y = pitch
	plan_point.angular.z = yaw
	point_mode.data = mode
	# add the new info to the plan and return it
	plan.points.append(plan_point)
	plan.modes.append(point_mode)
	return plan
	
def generate_plan(rob_pos, ball_pos):
	# define a plan variable
	plan = Plan()
	y_offset = 0.0#-0.01
	z_offset = 0.0 #0.015
	#xyz rpy of the robot
	rx, ry, rz = rob_pos.linear.x, rob_pos.linear.y, rob_pos.linear.z
	roll, pitch, yaw = rob_pos.angular.x, rob_pos.angular.y, rob_pos.angular.z
	# xyz if the ball (keep roll-pitch-yaw fixed for all of the points)
	bx, by, bz = ball_pos.linear.x, ball_pos.linear.y, ball_pos.linear.z
	
	# add an initial point based on where we start from 
	plan = add_point(plan, rx, ry, rz, roll, pitch, yaw, 0) # robot control mode

	# hover point 10 cm above the ball
	plan = add_point(plan, bx, by+y_offset, bz + 0.1, roll, pitch, yaw, 0) # robot control mode
	
	# ball center
	plan = add_point(plan, bx, by+y_offset, bz +z_offset, roll, pitch, yaw, 0) # robot control mode
	
	# ball center
	plan = add_point(plan, bx, by+y_offset, bz +z_offset, roll, pitch, yaw, 2) # close gripper at the current position
	
	# lift the ball to 20 cm above the center
	plan = add_point(plan, bx, by, bz + 0.2, roll, pitch, yaw, 0) # robot control mode
	
	# go above the drop-zone
	plan = add_point(plan, bx+0.25, by+0.1, bz + 0.2, roll, pitch, yaw, 0) # robot control mode
	
	# drop-zone
	plan = add_point(plan, bx+0.25, by+0.1, bz +z_offset, roll, pitch, yaw, 0) # robot control mode
	
	
	# drop the ball by opening the gripper
	plan = add_point(plan, bx+0.25, by+0.1, bz +z_offset, roll, pitch, yaw, 1) # open gripper at the current position
	
	# go above the drop-zone
	plan = add_point(plan, bx+0.25, by+0.1, bz + 0.2, roll, pitch, yaw, 0) # robot control mode
	
	return plan
	
	
rob_pos = Twist()
 
pos_received = False

def pose_callback(data):
	global rob_pos
	global pos_received 
	# update the current message
	rob_pos = data
	pos_received = True
	
	

ball_in_camera_pos = tf2_geometry_msgs.PointStamped()
ball_in_camera_pos.header.frame_id = 'camera_color_optical_frame' 

ball_received = False

def ball_callback(data):
	global ball_in_camera_pos
	global ball_received 
	# update the current message
	ball_in_camera_pos.point.x = data.xc
	ball_in_camera_pos.point.y = data.yc
	ball_in_camera_pos.point.z  = data.zc
	#print('IN CAM: x_c: ', ball_in_camera_pos.point.x, 'y_c: ', ball_in_camera_pos.point.y, 'z_c: ', ball_in_camera_pos.point.z) 
	ball_received = True
	

if __name__ == '__main__':
	# initialize the node
	rospy.init_node('ball_move_planner', anonymous = True)
	# add a subscriber to it to read the position information
	pos_sub = rospy.Subscriber('/ur5e/toolpose', Twist, pose_callback)
	
	# add a subscriber to it to read ball center in the camera frame
	ball_sub = rospy.Subscriber('/sphere_params', SphereParams, ball_callback)

	# add a publisher for sending robot motion plans
	plan_pub = rospy.Publisher('/plan', Plan, queue_size = 10)
	
	
	# add a ros transform listener
	tfBuffer = tf2_ros.Buffer()
	listener = tf2_ros.TransformListener(tfBuffer)
	
	
	# set a 10Hz frequency for this loop
	loop_rate = rospy.Rate(10)

			
	ball_pos = Twist()
	
	
	plan = Plan()
	
	plan_generated = False
	ball_converted = False
	
	while not rospy.is_shutdown():
		
		# try getting the most update transformation between the tool frame and the base frame
		try:
			trans = tfBuffer.lookup_transform("base", "camera_depth_optical_frame", rospy.Time())
		except (tf2_ros.LookupException, tf2_ros.ConnectivityException, tf2_ros.ExtrapolationException):
			print('Frames not available!!!')
			loop_rate.sleep()
			continue
		
		
		if ball_received and not ball_converted:
			ball_in_camera_pos.header.stamp = rospy.get_rostime()
			print('-------------------------------------------------')
			# convert the 3D point to the base frame coordinates
			pt_in_base = tfBuffer.transform(ball_in_camera_pos,'base', rospy.Duration(1.0))
			print('Test point in the CAMERA frame:  x= ', format(ball_in_camera_pos.point.x, '.3f'), '(m), y= ', format(ball_in_camera_pos.point.y, '.3f'), '(m), z= ', format(ball_in_camera_pos.point.z, '.3f'),'(m)')
			print('Transformed point in the BASE frame:  x= ', format(pt_in_base.point.x, '.3f'), '(m), y= ', format(pt_in_base.point.y, '.3f'), '(m), z= ', format(pt_in_base.point.z, '.3f'),'(m)')
			print('-------------------------------------------------')
			# update the ball position in the base frame
			ball_pos.linear.x = pt_in_base.point.x
			ball_pos.linear.y = pt_in_base.point.y
			ball_pos.linear.z = pt_in_base.point.z
			ball_converted = True

		
		if pos_received and ball_converted and not plan_generated:
			plan = generate_plan(rob_pos, ball_pos)
			plan_generated = True
		# publish the plan
		plan_pub.publish(plan)
		# wait for 0.1 seconds until the next loop and repeat
		loop_rate.sleep()
