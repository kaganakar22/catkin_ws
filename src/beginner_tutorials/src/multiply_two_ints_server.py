#! /usr/bin/env python
from __future__ import print_function
from beginner_tutorials.srv import Multiply,MultiplyResponse
import rospy

import std_msgs.msg



def multiplypls(req):
	print("Returning [%s * %s = %s]"%(req.a, req.b, (req.a * req.b)))
	return MultiplyResponse(req.a * req.b)
	
def multiply_server():
	rospy.init_node("multiply_server")
	srv = rospy.Service("multiply", Multiply, multiplypls)
	print("Ready 4 multiply")
	rospy.spin()

if __name__ == "__main__":
	multiply_server()
