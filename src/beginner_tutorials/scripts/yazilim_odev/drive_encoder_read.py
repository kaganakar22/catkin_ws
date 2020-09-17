#! /usr/bin/env python
import rospy
import std_msgs.msg

rospy.init_node("READ_PUBLISH")
def check_data(enc_data):
	temp_list = []
	temp_list[:0] = enc_data
	for x in range(3, len(enc_data), 5):
		to_check = "".join(enc_data[x:x+3])
		if int(to_check) > 255:
			temp_list[x:x+3] = ['2','5','5']
	checked_data = "".join(temp_list)
	return checked_data

def seperator(enc_data):
	islenmis_data = []
	for i in range(len(enc_data)):
		if i%4 == 0:
			islenmis_data += enc_data[i]
			islenmis_data += " "
		else:
			islenmis_data += enc_data[i]
	return islenmis_data
def callback1(data):
	#read and seperate encoder data
		my_data = data.data
		seperated_data = "".join(seperator(str(data.data)))
	
		checked_one = check_data(seperated_data)
	
		#if len(my_data) == 18:
		drive_publish(checked_one)
		#elif len(my_data) == 26:
		#	robotic_arm_publish(checked_one)
		#else:
			#rospy.loginfo("corrupted encoder data")
def callback2(data):
	my_data = data.data
	seperated_data = "".join(seperator(str(data.data)))
	checked_one = check_data(seperated_data)
	robotic_arm_publish(checked_one)	
def drive_encoder_read():
	rospy.Subscriber("serial/drive", std_msgs.msg.String, callback1)
	rospy.Subscriber("serial/robotic_arm", std_msgs.msg.String, callback2)

def drive_publish(hehe):
	drive_pub_listened = rospy.Publisher("position/drive", std_msgs.msg.String, queue_size=10)
	drive_pub_listened.publish(hehe)
def robotic_arm_publish(hehe):
	robotic_arm_pub_listened = rospy.Publisher("position/robotic_arm", std_msgs.msg.String,queue_size=10)
	robotic_arm_pub_listened.publish(hehe)

if __name__ == "__main__":
	while not rospy.is_shutdown():
		drive_encoder_read()
		rospy.Rate(1).sleep()
