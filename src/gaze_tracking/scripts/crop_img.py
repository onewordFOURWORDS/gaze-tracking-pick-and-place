#!/usr/bin/env python3
import rospy
import numpy as np
import cv2 as cv
from cv_bridge import CvBridge
from sensor_msgs.msg import Image
from sensor_msgs.msg import CameraInfo

img_received = False

# get the image message
def get_image(ros_img):
	global rgb_img
	global img_received
	# convert to opencv image
	rgb_img = CvBridge().imgmsg_to_cv2(ros_img, "rgb8")
	# raise flag
	img_received = True

def get_info(d):
	global height
	global width

	height = d.height
	width = d.width



def main():
	rospy.init_node('crop_img', anonymous = True)
	# subscribe to the camera image that we want to crop
	img_sub = rospy.Subscriber("/camera/color/image_raw", Image, get_image)
	# Get camera info to dynamically crop the camera resolution
	info_sub = rospy.Subscriber("/camera/color/camera_info", CameraInfo, get_info)

	# initlize publisher to publish the cropped image
	img_pub = rospy.Publisher('/cropped_img', Image, queue_size = 1)

	# set rospy rate
	rate = rospy.Rate(10)

	while not rospy.is_shutdown():
		if img_received:
			# The monitor that gaze tracking is linked to is 1280x1024
			# 5:4 resolution
			# crop image to match a 5:4 resolution

			# Use 1/5 the height * 4 to get proper 5:4 ratio
			height_aspect = height//5
			width_aspect = height_aspect*4

			# maths stuff for the actual cropping bit
			remove = width-width_aspect
			# remove equal amounts from left and right
			left = remove//4
			right = width - remove//4

			# Keep full height, remove equal amounts from left and right side of image
			cropped_img = rgb_img[0:height, left:right]

			# cropped_img = rgb_img[0:720, 0:900]

			# convert cropped image to image msg
			img_msg = CvBridge().cv2_to_imgmsg(cropped_img, encoding="rgb8")
			# publish img
			img_pub.publish(img_msg)

		rate.sleep()

if __name__ == '__main__':
	main()
