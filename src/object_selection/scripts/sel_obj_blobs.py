#!/usr/bin/env python3
import rospy
import numpy as np
import cv2 as cv
from gaze_tracking.msg import gazedata
from gaze_tracking.msg import Blob_Params
from gaze_tracking.msg import Blobs

gaze_received = False
blob_received = False

# Get the gaze tracker data from the message
def get_gaze(data):
    global POGX
    global POGY
    global POGV
    global POGD
    global gaze_received
    POGX = data.POGX
    POGY = data.POGY
    POGV = data.POGV
    POGD = data.POGD
    gaze_received = True

    data_received = True

def get_blobs(data):
    global blob_list
    global blob_received
    blob_list = data.blob_list
    blob_received = True

def main():
    rospy.init_node('sel_obj_blobs', anonymous = True)
    # initilize a subscriber to get darknet bounding boxes
    gaze_sub = rospy.Subscriber("/gaze_publisher", gazedata, get_gaze)
    sel_areas = rospy.Subscriber("/blob_data", Blobs, get_blobs)
    sel_pub = rospy.Publisher('/selected_obj', Blob_Params, queue_size = 1)
    rate = rospy.Rate(10)

    while not rospy.is_shutdown():
        if gaze_received & blob_received:
            for i in range(len(blob_list)):
                # relative gaze point for cropped image
                point_x = int(900*POGX)
                point_y = int(720*POGY)
                x_coord = blob_list[i].x_coord
                y_coord = blob_list[i].y_coord
                radius = blob_list[i].radius
                # print(x_coord, y_coord, radius)
                # print(point_x, point_y)

                # this is actually selecting within a box vs a circle shape
                # should actually provide more robust selectin because bigger area
                if ((x_coord - radius) < point_x < (x_coord + radius)) and ((y_coord - radius) < point_y < (y_coord + radius)):
                    if POGD < .6:
                        print("object", i, "will be selected")
                        continue
                    elif POGD > .6:
                        sel_pub.publish(blob_list[i])
                        print("object", i, "selected")


            rate.sleep()

if __name__ == '__main__':
    main()
