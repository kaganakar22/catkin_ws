#! /usr/bin/env python
from __future__ import print_function
import sys
import rospy
from beginner_tutorials.srv import * 


def multiply_client(x, y):
	rospy.wait_for_service('multiply')
	multiply = rospy.ServiceProxy('multiply', Multiply)
	resp = multiplypls(x, y)
	return resp.multiply
if __name__ == "__main__":
	x = int(sys.argv[1])
	y = int(sys.argv[2])
	print("Requesting %s * %s"%(x,y))
	print("%s * %s = %s"%(x, y, multiply_client(x, y)))

