#!/usr/bin/env python3
import rospy
import numpy as np
import cv2 as cv
from cv_bridge import CvBridge
from sensor_msgs.msg import Image
from sensor_msgs.msg import CameraInfo
from Robotics_Report2.msg import Blob_Params

object_selected = False

# get the params for the selected object
def get_params(data):
	global x_sel
	global y_sel
	global rad_sel
	global id_sel
	global object_selected
	x_sel = data.x_coord
	y_sel = data.y_coord
	rad_sel = data.radius
	id_sel	= data.id
	object_selected = True

def get_info(d):
	global height
	global width

	height = d.height
	width = d.width


def main():
	rospy.init_node('sel_obj', anonymous = True)
	# subscribe to the selected object params
	selblob_sub = rospy.Subscriber("/selected_obj", Blob_Params, get_params)
	# publisher for the blocked image
	masked_img = rospy.Publisher('/selected_obj_image', Image, queue_size = 1)
	# get camera information'
	info_sub = rospy.Subscriber("/camera/color/camera_info", CameraInfo, get_info)

	rate = rospy.Rate(2)

	while not rospy.is_shutdown():
		if object_selected:
			# Use 1/5 the height * 4 to get proper 5:4 ratio
			height_aspect = height//5
			width_aspect = height_aspect*4

			# maths stuff for the actual cropping bit
			remove = width-width_aspect
			# we will use this left value as an ofset to move the circle into
			# correct spot since we are going back to a 16:9 ratio
			left = remove//4


			blank_image = np.zeros((720,1280), np.uint8)

			center = (x_sel + left, y_sel)
			axes = (rad_sel, rad_sel)
			angle = 0
			color = (255,255,255)
			thickness = -1


			mask = cv.ellipse(blank_image, center, axes, angle, 0, 360, color, thickness)

			# invert the img so that the tennis ball is white
			# mask = cv.bitwise_not(mask)

			img_msg = CvBridge().cv2_to_imgmsg(mask, encoding="mono8")
			masked_img.publish(img_msg)

		rate.sleep()

if __name__ == '__main__':
	main()
