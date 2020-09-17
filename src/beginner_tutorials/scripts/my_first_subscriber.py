#! /usr/bin/env python
from __future__ import print_function
import rospy
from std_msgs.msg import String

import std_msgs.msg

def callbackq(data):
	dataqe = str(data.data)
	print(list(dataqe))

def listener():
	rospy.init_node('my_first_listener_node')
	rospy.Subscriber("my_topic", std_msgs.msg.String, callbackq)
	rospy.spin()

if __name__ == "__main__":
	listener()
