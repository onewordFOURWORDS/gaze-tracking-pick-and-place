#!/usr/bin/env python3
import rospy
import numpy as np
import cv2 as cv
from cv_bridge import CvBridge
from sensor_msgs.msg import Image
from gaze_tracking.msg import gazedata
from gaze_tracking.msg import Blobs
from gaze_tracking.msg import Blob_Params


img_received = False
data_received = False
blob_received = False
object_selected = False


# get the image message
def get_image(ros_img):
	global rgb_img
	global img_received
	# convert to opencv image
	rgb_img = CvBridge().imgmsg_to_cv2(ros_img, "rgb8")
	# raise flag
	img_received = True

# Get the gaze tracker data from the message
def get_data(data):
	global POGX
	global POGY
	global POGV
	global data_received
	POGX = data.POGX
	POGY = data.POGY
	POGV = data.POGV

	data_received = True

def get_blobs(data):
    global blob_list
    global blob_received
    blob_list = data.blob_list
    blob_received = True

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


def main():
	# 1 = blank images
	# 2 = object detection image

	# define the node and subcribers and publishers
	rospy.init_node('gaze_point_blobs', anonymous = True)
	# define a subscriber to ream images
	img_sub = rospy.Subscriber("/cropped_img", Image, get_image)
	# define a subscriber to get gaze data
	gaze_sub = rospy.Subscriber("/gaze_publisher", gazedata, get_data)
	blob_sub = rospy.Subscriber("/blob_data", Blobs, get_blobs)
	selblob_sub = rospy.Subscriber("/selected_obj", Blob_Params, get_params)
	img_pub = rospy.Publisher('/gaze_location_img', Image, queue_size = 1)

	# set the loop frequenccropped_img
	rate = rospy.Rate(30)
	while not rospy.is_shutdown():
		#print("Image Received?", img_received, "Data Received?", data_received)
		# make sure we process if the camera has started streaming images
		if img_received & data_received & blob_received:

			# Draw a circle on the image based on the gaze location
			green = (0, 200, 0) # color of the circle
			center = (int(900*POGX), int(720*POGY)) # center circle on gaze spot
			axes = (4,4) # circle size
			angle = 0 # angle of the ellipse doesnt matter since this uses a circle
			thickness = -1 # line thickness of the cirlce
			# cv.ellipse(img, center, axes, angle, a0, a1, color, thickness)
			marked_image = cv.ellipse(rgb_img, center, axes, angle, 0, 360, green, thickness)

			for blob in blob_list:
				center = (blob.x_coord, blob.y_coord)
				red = (255, 0, 0)
				axes = (blob.radius, blob.radius)
				angle = 0
				thickness = 2
				marked_image = cv.ellipse(rgb_img, center, axes, angle, 0, 360, red, thickness)


			if object_selected:	# Draw a circle on the image based on the gaze location
				green = (0, 200, 0) # color of the circle
				center = (int(900*POGX), int(720*POGY)) # center circle on gaze spot
				axes = (4,4) # circle size
				angle = 0 # angle of the ellipse doesnt matter since this uses a circle
				thickness = -1 # line thickness of the cirlce
				# cv.ellipse(img, center, axes, angle, a0, a1, color, thickness)
				marked_image = cv.ellipse(rgb_img, center, axes, angle, 0, 360, green, thickness)

			for blob in blob_list:
				center = (blob.x_coord, blob.y_coord)
				red = (255, 0, 0)
				axes = (blob.radius, blob.radius)
				angle = 0
				thickness = 2
				marked_image = cv.ellipse(rgb_img, center, axes, angle, 0, 360, green, thickness)

			# convert it to ros msg and publish it
			img_msg = CvBridge().cv2_to_imgmsg(marked_image, encoding="rgb8")

			# publish the image
			img_pub.publish(img_msg)

		# pause until the next iteration
		rate.sleep()


if __name__ == '__main__':
	main()
