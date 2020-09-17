#! /usr/bin/env python
from __future__ import print_function
from beginner_tutorials.srv import multiply,multiplyResponse
import rospy

import std_msgs.msg



def multiplypls(req):
	print("Returning [%s * %s = %s]"%(req.a, req.b, (req.a * req.b)))
	return multiplyResponse(req.a * req.b)
	
def multiply_server():
	rospy.init_node("multiply")
	srv = rospy.Service("multiply", multiply, multiplypls)
	print("Ready 4 multiply")
	rospy.spin()

if __name__ == "__main__":
	multiply_server()
