#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist, TwistStamped
from vehicle_base.msg import VehicleBaseCmd
import time
global count
count = 0


def callback(cmdVelocity):
    

    baseVelocity = VehicleBaseCmd()
    baseVelocity.Seq = 1

    now = rospy.get_rostime()
    baseVelocity.Stamp = now
    
    baseVelocity.Frame_ID = "Vehicle_command"
    baseVelocity.Throttle = cmdVelocity.linear.x
    baseVelocity.SteeringAngle = cmdVelocity.angular.z
    baseVelocity.SpeedMode = 1
    baseVelocity.LeftBrake = 1
    baseVelocity.RightBrake = 1
    baseVelocityPub = rospy.Publisher('base_velocity', VehicleBaseCmd, queue_size=10)
    baseVelocityPub.publish(baseVelocity)
    


def cmd_vel_listener():

    rospy.Subscriber("cmd_vel", Twist, callback)

    rospy.spin()

if __name__ == '__main__':
    rospy.init_node('cmd_vel_listener', anonymous=True)
    cmd_vel_listener()
