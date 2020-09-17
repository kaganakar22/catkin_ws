#! /usr/bin/env python

import rospy

rospy.wait_for_service("add_two_ints")
add_two_ints = rospy.ServiceProxy("add_ints", rospy_tutorials.srv.AddTwoInts)

resp = add_two_ints(1,2)
