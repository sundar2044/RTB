#Name of the topic: vehicle_response
#
#Publish rate is related to the Sending command rate
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
#Battery voltage, uint: V
float32 BatteryVoltage
#Battery current, uint: A
float32 BatteryCurrent
#Battery capacity, range: (0 - 1) ---- (0% - 100%)
float32 BatteryCapacity
#Battery remaining, uint: Ah
float32 BatteryRemaining
#Battery Temperature, uint: C
float32 BatteryTemperature
#Left motor speed, uint: km/h
float32 LeftMotorSpeed
#Left motor current, uint: A
float32 LeftMotorCurrent
#Left motor Temperature, uint: C
float32 LeftMotorTemp
#Left motor odometer, uint: km
float32 LeftMotorOdometer
#Left motor torque, uint: Nm
float32 LeftMotorTorque
#Right motor speed, uint: km/h
float32 RightMotorSpeed
#Right motor current, uint: A
float32 RightMotorCurrent
#Right motor Temperature, uint: C
float32 RightMotorTemp
#Right motor odometer, uint: km
float32 RightMotorOdometer
#Right motor torque, uint: Nm
float32 RightMotorTorque
#Current Latitude
float32 CurrentLatitude
#Current Longititude
float32 CurrentLongitude
#Compass Roll
float32 CompassRoll
#Compass Pitch
float32 CompassPitch
#Compass Yaw
float32 CompassYaw
#Remote controller Throttle value for the vehicle,range: -1.0 - 1.0 <----> -100%(reverse) ~ 100%(forward)
float32 RCThrottle
#Remote controller Steering Angle for the vehicle,range: -1.0 - 1.0 <----> -90 Degree(turn left) ~ 90 Degree(turn right)
float32 RCSteeringAngle
#Remote controller motor power: on---bigger than 0, off---0
uint8 RCMotorPower
#Remote controller Speed mode: High speed mode---bigger than 0, low speed mode---0
uint8 RCSpeedMode
#Remote controller Left brake value: on---bigger than 0, off---0
uint8 RCLeftBrake
#Remote controller Right brake value: on---bigger than 0, off---0
uint8 RCRightBrake
#Robotic Arm power: on---bigger than 0, off---0
uint8 RCRoboticArmPwr
#Navigation Command
#  
#  0x8000 ----- Cancel the navigation operation
#  0x8001 ----- Set base coordinate for the RTB
#  0x8002 ----- Start RTB
#  0x8004 ----- Pause RTB
#  0x8008 ----- Start recording the route for the RTB
#  0x8010 ----- Set Destination for the 2 Point Way Navigation
#  0x8020 ----- Start the 2 Point Way Navigation
#  0x8040 ----- Pause the 2 Point Way Navigation
#
#  0x9000 ----- Emergency Stop
#  Others ----- Nope
#
uint16 RCNavigationCmd
#Destination Latitude
float32 DestinationLatitude
#Destination Longititude
float32 DestinationLongitude

