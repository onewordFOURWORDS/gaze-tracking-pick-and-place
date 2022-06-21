#!/usr/bin/env python3
import rospy
# import components for server connection and data cleaning of raw gaze data
import socket
import numpy as np
import re
# import custom gazedata msg
from gaze_tracking.msg import gazedata


def get_gaze():
    pub = rospy.Publisher('/gaze_publisher', gazedata, queue_size=10)
    rospy.init_node('gaze_publisher', anonymous=True)
    rate = rospy.Rate(58)  # 10hz
    msg = gazedata()

    s = server_connection('192.168.56.101', 4242)
    request_gaze_data(s)
    ignore_x_msgs(s, 5)

    while not rospy.is_shutdown():
        receive_gaze_data(s)
        # This might be a bad way to get this
        # If we end up requesting different data from the server these indexes might change
        data = receive_gaze_data(s)
        msg.BPOGX = data[0]
        msg.BPOGY = data[1]
        msg.BPOGV = data[2]

        pub.publish(msg)
        rate.sleep()


def server_connection(ip, port):
    """
    Connect to the server address and return the socket connection variable
    :param ip: server ip address as a string
    :param port: server port
    :return: socket connection variable
    """
    # Host machine IP/IP address of Windows VM
    host = ip
    # Gazepoint Port
    port = port
    address = (host, port)
    # Connect to Gazepoint control server on Windows VM
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.connect(address)
    return s


def request_gaze_data(s):
    """
    Commands sent to Gazepoint Control server to request certain data using the Gazepoint API
    :param s: socket connection variable
    :return: none
    """
    # Send command to request certain data
    s.send(str.encode('<SET ID="ENABLE_SEND_BLINK" STATE="1" />\r\n'))
    s.send(str.encode('<SET ID="ENABLE_SEND_POG_AAC" STATE="1" />\r\n'))
    # Enable the server to return the data requested
    s.send(str.encode('<SET ID="ENABLE_SEND_DATA" STATE="1" />\r\n'))


def receive_gaze_data(s):
    """
    Receive and clean the data from the Gazepoint Control server.
    :param s: socket connection variable
    :return: rxdat (cleaned gaze data)
    """
    # Regex that only includes numbers and .
    numbers = re.compile(r'\d+(?:\.\d+)?')

    newlist = []
    rxdat = s.recv(1024)  # Receive data from server
    rxdat = bytes.decode(rxdat)

    # Split each data point into a separate item
    rxdat = rxdat.split()
    # Remove the first and last item in the list
    # Removes '<REC' and '/>' items
    rxdat = rxdat[1:-1]

    # Convert to numpy array
    rxdat = np.asarray(rxdat)
    # make array vertical + converts into 2d array
    rxdat = rxdat.reshape(-1, 1)

    try:
        # Converts to pure float values and appends to newlist
        for i in range(len(rxdat)):
            temp = (numbers.findall(rxdat[i][0]))
            temp = float(temp[0])
            newlist.append(temp)
    except IndexError:
        print("Gazepoint Server fell behind | Data will be repeated until it catches up")


    return newlist


def ignore_x_msgs(s, num):
    """
    Ignore the first 'num' of messages received from the Gazepoint control server. The first
    several messages are not actual gaze tracking data.
    :param s: socket connection variable
    :param num: number of messages to ignore
    :return: none
    """
    # Do nothing with the first couple of items received. Not gaze tracking data
    for i in range(num):
        s.recv(1024)


if __name__ == '__main__':
    try:
        get_gaze()
    except rospy.ROSInterruptException:
        pass
