#!/usr/bin/env python3

import rospy
from servo_control.msg import ServoPosition
import RPi.GPIO as GPIO 
from time import sleep  

# GPIO pin number and PWM frequency settings
servoPin          = 12   
SERVO_MAX_DUTY    = 12   
SERVO_MIN_DUTY    = 3   

GPIO.setmode(GPIO.BOARD)        
GPIO.setup(servoPin, GPIO.OUT)  

servo = GPIO.PWM(servoPin, 50)  
servo.start(0)  

def setServoPos(degree):
    if degree > 180:
        degree = 180
    duty = SERVO_MIN_DUTY + (degree * (SERVO_MAX_DUTY - SERVO_MIN_DUTY) / 180.0)
    servo.ChangeDutyCycle(duty)


def servo_callback(data):
    rospy.loginfo("Received servo position: %f", data.position)
    setServoPos(data.position)

    
def servo_subscriber():
    rospy.init_node('servo_subscriber', anonymous=True)
    rospy.Subscriber('/servo_position', ServoPosition, servo_callback)
    rospy.spin()


if __name__ == '__main__':
    servo_subscriber()