#! /usr/bin/env python

import rospy
import std_msgs.msg

def drive_publish_try():
	pub = rospy.Publisher("serial/drive", std_msgs.msg.String, queue_size=10)
	rospy.init_node("deneme_publish")
	rate = rospy.Rate(10)
	while not rospy.is_shutdown():
		data_bizimki = "A10031003100310031003100310031003100310031003102403300420120010050130B"
		pub.publish(data_bizimki)
		rate.sleep()
if __name__ == "__main__":
	drive_publish_try()
