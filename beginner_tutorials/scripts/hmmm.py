#! /usr/bin/env python

import rospy

def add_two_ints(req):
 return rospy_tutorials.srv.AddTwoIntsResponse(req.a + req.b)

def add_two_ints_server():
	rospy.init_node("add_node")
	s = rospy.Service('add_two_ints', rospy_tutorials.srv.AddTwoInts, add_two_ints)
	rospy.spin()
