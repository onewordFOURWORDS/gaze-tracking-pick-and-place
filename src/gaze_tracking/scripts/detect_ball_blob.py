#!/usr/bin/env python3
import rospy
import numpy as np
import cv2
from cv_bridge import CvBridge
from sensor_msgs.msg import Image
from gaze_tracking.msg import Blob_Params
from gaze_tracking.msg import Blobs


img_received = False
# define a 720x1280 3-channel image with all pixels equal to zero
rgb_img = np.zeros((720, 1280, 3), dtype = "uint8")


# get the image message
def get_image(ros_img):
	global rgb_img
	global img_received
	# convert to opencv image
	rgb_img = CvBridge().imgmsg_to_cv2(ros_img, "rgb8")
	# raise flag
	img_received = True

if __name__ == '__main__':
	# define the node and subcribers and publishers
	rospy.init_node('detect_ball_blob', anonymous = True)
	# define a subscriber to ream images
	img_sub = rospy.Subscriber("/cropped_img", Image, get_image)
	# define a publisher to publish images
	img_pub = rospy.Publisher('/ball_2D', Image, queue_size = 1)
	blob_pub = rospy.Publisher('/blob_data', Blobs, queue_size = 1)

	# set the loop frequency
	rate = rospy.Rate(3)

	while not rospy.is_shutdown():
		# make sure we process if the camera has started streaming images
		if img_received:
			# convert image to the HSV space
			rgb_img = cv2.blur(rgb_img,(8,8))
			hsv = cv2.cvtColor(rgb_img, cv2.COLOR_RGB2HSV)
			# define the upper and lower bounds
			lower = np.array([25,40,100])
			upper = np.array([90,255,255])
			# apply filter to image
			masked_img = cv2.inRange(hsv, lower, upper)
			# invert the image since blob detection is based on darker areas
			gray = cv2.bitwise_not(masked_img)
			params = cv2.SimpleBlobDetector_Params()
			# Filter by area
			params.filterByArea = True
			params.minArea = 2000
			params.maxArea = 10000000 # This one parameter caused me hours of confusion,
									 # if you dont set a max area then there is a default
									 # max value that isn't mentioned in the docs
			# Filter by color
			params.filterByColor = True
			params.blobColor = 0

			# Not currently used, can be added for more precise filtering
			#Filter by Circularity
			params.filterByCircularity = False
			params.minCircularity = 0.8
			# Filter by Convexity
			params.filterByConvexity = False
			params.minConvexity = 0.87
			# Filter by Intertia
			params.filterByInertia = False
			params.minInertiaRatio = 0.8

			# Set up the detector with default parameters
			detector = cv2.SimpleBlobDetector_create(params)
			# Detect blobs
			keypoints = detector.detect(gray)
			# Draw detected blobs on the images
			blank = np.zeros((1,1))
			blobs = cv2.drawKeypoints(gray, keypoints, blank,
								(0,0,255), cv2.DRAW_MATCHES_FLAGS_DRAW_RICH_KEYPOINTS)


			blob_list = []
			for i in range(len(keypoints)):
				bparams = Blob_Params()
				bparams.x_coord = round(keypoints[i].pt[0])
				bparams.y_coord = round(keypoints[i].pt[1])
				bparams.radius = round(keypoints[i].size)//2
				bparams.id = i
				blob_list.append(bparams)

			# convert it to ros msg and publish it
			img_msg = CvBridge().cv2_to_imgmsg(blobs, "rgb8")
			# publish the image with the drawn keypoints on it
			blob_pub.publish(blob_list)
			# publish the all the blobs keypoint params
			img_pub.publish(img_msg)

		# pause until the next iteration
		rate.sleep()
