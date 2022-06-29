#!/usr/bin/env python3
import rospy
import numpy as np
import cv2 as cv
from cv_bridge import CvBridge
from sensor_msgs.msg import Image

# get the image message
def get_image(ros_img):
	global rgb_img
	global img_received
	# convert to opencv image
	rgb_img = CvBridge().imgmsg_to_cv2(ros_img, "rgb8")
	# raise flag
	img_received = True

def main():
    # subscribe to the camera image that we want to crop
    img_sub = rospy.Subscriber("/camera/color/image_raw", Image, get_image)
    # Get camera info to dynamically crop the camera resolution
    info_sub = rospy.Subscriber("/camera/color/camera_info")

    # initlize publisher to publish the cropped image
    img_pub = rospy.Publisher('/cropped_img', Image, queue_size = 1)

    rate = rospy.Rate(10)
	while not rospy.is_shutdown():
        if img_received:
