#Name of the topic: vehicle_command
#
#Sending command rate should be smaller than 10 per second. Recommanded rate is 5 per second.
#
#
#Standard metadata for higher-level flow data types
#sequence ID: consecutively increasing ID
uint32 Seq
#Two-integer timestamp that is expressed as:
# * stamp.secs: seconds (stamp_secs) since epoch
# * stamp.nsecs: nanoseconds since stamp_secs
# time-handling sugar is provided by the client library
time Stamp
#Frame this data is associated with
string Frame_ID
#Throttle value for the vehicle,range: -1.0 - 1.0 <----> -100%(reverse) ~ 100%(forward)
float32 Throttle
#Steering Angle for the vehicle,range: -1.0 - 1.0 <----> -90 Degree(turn left) ~ 90 Degree(turn right)
# 
# When steering angle bigger than 0.5 (45 Degree), or smaller than -0.5 (-45 Degree)
# Rotate by the center of vehicle with preset steerig angle and throttle:
# The actural steering angle wil be set to +90 or -90 degree
# The actural speed mode will be set to low speed mode
# The actural throttle wil be set to 60% (need to test this preset value)
#
float32 SteeringAngle
#Speed mode: High speed mode---bigger than 0, low speed mode---0
uint8 SpeedMode
#Left brake value: on---bigger than 0, off---0
uint8 LeftBrake
#Right brake value: on---bigger than 0, off---0
uint8 RightBrake
