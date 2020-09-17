#! /usr/bin/env python
# coding=utf-8
from __future__ import print_function
import rospy
import std_msgs.msg

rospy.init_node("READ_PUBLISH")

class ReadAndPublish():
	def __init__(self):
		self.corrupted = 0 #gelen verinin başının A sonunun B olmasını ddenetlemek için boolean 
			
		#Subscriber dan gelen veriyi tutmak için değişkenler
		self.temp = "" #gelen datanın uzunluğu için
		self.robotic_arm = ""
		self.drive = ""

		#publisher
		self.pub_drive = rospy.Publisher("position/drive", std_msgs.msg.String, queue_size = 10)
		self.pub_robotic_arm = rospy.Publisher("position/robotic_arm", std_msgs.msg.String, queue_size = 10)

		#subscriber
		rospy.Subscriber("serial/drive", std_msgs.msg.String, self.callback_drive)
		rospy.Subscriber("serial/robotic_arm", std_msgs.msg.String, self.callback_robotic_arm)
	
	#gelen verinin belirli kısımları 255'ten büyükse 255 e eşitle
	def check_data(self, enc_data):
		temp_list = []
		temp_list[:0] = enc_data
		for x in range(3, len(enc_data), 5):
			to_check = "".join(enc_data[x:x+3])
			if int(to_check) > 255:
				temp_list[x:x+3] = ['2','5','5']
		checked_data = "".join(temp_list)
		return checked_data

	#gelen veriyi parçalara ayır
	def seperator(self, enc_data):
			islenmis_data = []
			for i in range(len(enc_data)):
				if i%4 == 0:
					islenmis_data += enc_data[i]
					islenmis_data += " "
				else:
					islenmis_data += enc_data[i]
			return islenmis_data

	#drive için callback fonksiyonu
	def callback_drive(self, data):
			seperated_data = "".join(self.seperator(str(data.data)))
			final_data = self.check_data(seperated_data)
			self.drive = final_data
			self.temp = data.data
			self.check_corrupted_data()
			

	#robot kol için callback fonksiyonu
	def callback_robotic_arm(self, data):
			seperated_data = "".join(self.seperator(str(data.data)))
			final_data = self.check_data(seperated_data)
			self.robotic_arm = final_data
			self.temp = data.data
			self.check_corrupted_data()
	def check_corrupted_data(self):
		if self.temp[0] != "A" or self.temp[-1] != "B":
			self.corrupted = 1
		else:
			self.corrupted = 0

	#kodu publishlemek için
	def publish(self):
		while not rospy.is_shutdown():	
			rate = rospy.Rate(1)
			if len(self.temp) == 18 and self.corrupted == 0:
				self.pub_drive.publish(self.drive)
			elif len(self.temp) == 26 and self.corrupted == 0:
				self.pub_robotic_arm.publish(self.robotic_arm)
			rate.sleep()
			if self.corrupted == 1:
				print("corrupted encoder data " + self.temp)

if __name__ == "__main__":
		ReadAndPublish().publish()
		














	

