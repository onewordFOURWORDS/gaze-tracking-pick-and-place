#!/usr/bin/env python3
import rospy
import numpy as np
import cv2 as cv
from darknet_ros_msgs.msg import BoundingBoxes
from darknet_ros_msgs.msg import BoundingBox
from gaze_tracking.msg import gazedata

box_ranges = []

def get_boxes(b):
    global box_ranges
    box_ranges = []
    box = b.bounding_boxes
    for i in box:
        box_ranges.append([i.xmin, i.ymin, i.xmax, i.ymax, i.id])

# Get the gaze tracker data from the message
def get_data(data):
    global POGX
    global POGY
    global POGV
    global POGD
    global data_received
    POGX = data.POGX
    POGY = data.POGY
    POGV = data.POGV
    POGD = data.POGD

    data_received = True


def main():
    rospy.init_node('sel_obj', anonymous = True)
    # initilize a subscriber to get darknet bounding boxes
    darknet_boxes = rospy.Subscriber("/darknet_ros/bounding_boxes", BoundingBoxes, get_boxes)
    gaze_sub = rospy.Subscriber("/gaze_publisher", gazedata, get_data)
    rate = rospy.Rate(1)

    while not rospy.is_shutdown():
        for i in range(len(box_ranges)):
            # relative gaze point for cropped image
            point_x = int(900*POGX)
            point_y = int(720*POGY)

            if (box_ranges[i][0] < point_x < box_ranges[i][2]) and (box_ranges[i][1] < point_y < box_ranges[i][3]):
                if POGD < 1:
                    print("object", box_ranges[i][4], "will be selected")
                    continue
                elif POGD > 1:
                    print("object", box_ranges[i][4], "selected")


        rate.sleep()

if __name__ == '__main__':
    main()
