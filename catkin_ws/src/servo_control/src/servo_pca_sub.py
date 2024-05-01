#!/usr/bin/env python3

import rospy
from servo_control.msg import ServoPosition
import RPi.GPIO as GPIO 
from time import sleep
from adafruit_servokit import ServoKit


def servo_callback(data):
    rospy.loginfo("Received servo positions: %f, %f", data.position1, data.position2)
    kit.servo[7].angle = data.position1  # 서보 1 위치 설정
    kit.servo[8].angle = data.position2  # 서보 2 위치 설정


def servo_subscriber():
    rospy.init_node('servo_subscriber', anonymous=True)
    rospy.Subscriber('/servo_position', ServoPosition, servo_callback)
    rospy.spin()


if __name__ == '__main__':
    kit = ServoKit(channels=16, address=0x40)  # PCA9685 객체 생성
    try:
        servo_subscriber()
    except rospy.ROSInterruptException:
        pass