#! /usr/bin/env python
import rospy
import std_msgs.msg

pub = rospy.Publisher("my_topic", std_msgs.msg.String, queue_size=10)
rospy.init_node("my_first_node_evet")
r = rospy.Rate(10)
while not rospy.is_shutdown():
	pub.publish(std_msgs.msg.String("hello!!"))
	r.sleep()
