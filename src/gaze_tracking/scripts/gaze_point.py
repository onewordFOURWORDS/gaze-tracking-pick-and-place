#!/usr/bin/env python3
import rospy
import numpy as np
import cv2 as cv
from cv_bridge import CvBridge
from sensor_msgs.msg import Image
from gaze_tracking.msg import gazedata


img_received = False
data_received = False


# get the image message
def get_image(ros_img):
	global rgb_img
	global img_received
	# convert to opencv image
	rgb_img = CvBridge().imgmsg_to_cv2(ros_img, "rgb8")
	# raise flag
	img_received = True


# get the image message
def get_obj_image(ros_img):
	global rgb_img
	global img_received
	# convert to opencv image
	rgb_img = CvBridge().imgmsg_to_cv2(ros_img, "rgb8")
	# raise flag
	img_received = True


# Get the gaze tracker data from the message
def get_data(data):
	global BPOGX
	global BPOGY
	global BPOGV
	global data_received
	BPOGX = data.BPOGX
	BPOGY = data.BPOGY
	BPOGV = data.BPOGV
	data_received = True


def main():
	# 1 = blank images
	# 2 = object detection image
	switch = 2

	# define the node and subcribers and publishers
	rospy.init_node('gaze_point', anonymous = True)
	if switch == 1:
		# define a subscriber to ream images
		img_sub = rospy.Subscriber("/camera/color/image_raw", Image, get_image)
	# define a subscriber to get gaze data
	gaze_sub = rospy.Subscriber("/gaze_publisher", gazedata, get_data)
	if switch == 2:
		# define a subscriber to get the object detection image
		obj_img_sub = rospy.Subscriber("/darknet_ros/detection_image", Image, get_obj_image)
	# define a publisher to publish images
	img_pub = rospy.Publisher('/gaze_location_img', Image, queue_size = 1)

	# set the loop frequenc
	rate = rospy.Rate(10)
	while not rospy.is_shutdown():
		#print("Image Received?", img_received, "Data Received?", data_received)
		# make sure we process if the camera has started streaming images
		if img_received & data_received:
			cropped_img = rgb_img[0:720, 0:900]

			# Draw a circle on the image based on the gaze location
			green = (0, 255, 0) # color of the circle
			center = (int(900*BPOGX), int(720*BPOGY)) # center circle on gaze spot
			axes = (3,3) # circle size
			angle = 0 # angle of the ellipse doesnt matter since this uses a circle
			thickness = -1 # line thickness of the cirlce
			# cv.ellipse(img, center, axes, angle, a0, a1, color, thickness)
			marked_image = cv.ellipse(cropped_img, center, axes, angle, 0, 360, green, thickness)

			# If gaze tracking is lost display a red circle as indication
			if BPOGV == 0:
				red = (255, 0, 0) # color of the circle
				center = (10, 10) # center circle on gaze spot
				axes = (5, 5) # circle size
				angle = 0 # angle of the ellipse doesnt matter since this uses a circle
				thickness = -1 # line thickness of the cirlce

				marked_image = cv.ellipse(cropped_img, center, axes, angle, 0, 360, red, thickness)

			# convert it to ros msg and publish it
			img_msg = CvBridge().cv2_to_imgmsg(marked_image, encoding="rgb8")

			# publish the image
			img_pub.publish(img_msg)

		# pause until the next iteration
		rate.sleep()


if __name__ == '__main__':
	main()
