; Auto-generated. Do not edit!


(cl:in-package vehicle_base-msg)


;//! \htmlinclude VehicleBaseRes.msg.html

(cl:defclass <VehicleBaseRes> (roslisp-msg-protocol:ros-message)
  ((Seq
    :reader Seq
    :initarg :Seq
    :type cl:integer
    :initform 0)
   (Stamp
    :reader Stamp
    :initarg :Stamp
    :type cl:real
    :initform 0)
   (Frame_ID
    :reader Frame_ID
    :initarg :Frame_ID
    :type cl:string
    :initform "")
   (BatteryVoltage
    :reader BatteryVoltage
    :initarg :BatteryVoltage
    :type cl:float
    :initform 0.0)
   (BatteryCurrent
    :reader BatteryCurrent
    :initarg :BatteryCurrent
    :type cl:float
    :initform 0.0)
   (BatteryCapacity
    :reader BatteryCapacity
    :initarg :BatteryCapacity
    :type cl:float
    :initform 0.0)
   (BatteryRemaining
    :reader BatteryRemaining
    :initarg :BatteryRemaining
    :type cl:float
    :initform 0.0)
   (BatteryTemperature
    :reader BatteryTemperature
    :initarg :BatteryTemperature
    :type cl:float
    :initform 0.0)
   (LeftMotorSpeed
    :reader LeftMotorSpeed
    :initarg :LeftMotorSpeed
    :type cl:float
    :initform 0.0)
   (LeftMotorCurrent
    :reader LeftMotorCurrent
    :initarg :LeftMotorCurrent
    :type cl:float
    :initform 0.0)
   (LeftMotorTemp
    :reader LeftMotorTemp
    :initarg :LeftMotorTemp
    :type cl:float
    :initform 0.0)
   (LeftMotorOdometer
    :reader LeftMotorOdometer
    :initarg :LeftMotorOdometer
    :type cl:float
    :initform 0.0)
   (LeftMotorTorque
    :reader LeftMotorTorque
    :initarg :LeftMotorTorque
    :type cl:float
    :initform 0.0)
   (RightMotorSpeed
    :reader RightMotorSpeed
    :initarg :RightMotorSpeed
    :type cl:float
    :initform 0.0)
   (RightMotorCurrent
    :reader RightMotorCurrent
    :initarg :RightMotorCurrent
    :type cl:float
    :initform 0.0)
   (RightMotorTemp
    :reader RightMotorTemp
    :initarg :RightMotorTemp
    :type cl:float
    :initform 0.0)
   (RightMotorOdometer
    :reader RightMotorOdometer
    :initarg :RightMotorOdometer
    :type cl:float
    :initform 0.0)
   (RightMotorTorque
    :reader RightMotorTorque
    :initarg :RightMotorTorque
    :type cl:float
    :initform 0.0)
   (CurrentLatitude
    :reader CurrentLatitude
    :initarg :CurrentLatitude
    :type cl:float
    :initform 0.0)
   (CurrentLongitude
    :reader CurrentLongitude
    :initarg :CurrentLongitude
    :type cl:float
    :initform 0.0)
   (CompassRoll
    :reader CompassRoll
    :initarg :CompassRoll
    :type cl:float
    :initform 0.0)
   (CompassPitch
    :reader CompassPitch
    :initarg :CompassPitch
    :type cl:float
    :initform 0.0)
   (CompassYaw
    :reader CompassYaw
    :initarg :CompassYaw
    :type cl:float
    :initform 0.0)
   (RCThrottle
    :reader RCThrottle
    :initarg :RCThrottle
    :type cl:float
    :initform 0.0)
   (RCSteeringAngle
    :reader RCSteeringAngle
    :initarg :RCSteeringAngle
    :type cl:float
    :initform 0.0)
   (RCMotorPower
    :reader RCMotorPower
    :initarg :RCMotorPower
    :type cl:fixnum
    :initform 0)
   (RCSpeedMode
    :reader RCSpeedMode
    :initarg :RCSpeedMode
    :type cl:fixnum
    :initform 0)
   (RCLeftBrake
    :reader RCLeftBrake
    :initarg :RCLeftBrake
    :type cl:fixnum
    :initform 0)
   (RCRightBrake
    :reader RCRightBrake
    :initarg :RCRightBrake
    :type cl:fixnum
    :initform 0)
   (RCRoboticArmPwr
    :reader RCRoboticArmPwr
    :initarg :RCRoboticArmPwr
    :type cl:fixnum
    :initform 0)
   (RCNavigationCmd
    :reader RCNavigationCmd
    :initarg :RCNavigationCmd
    :type cl:fixnum
    :initform 0)
   (DestinationLatitude
    :reader DestinationLatitude
    :initarg :DestinationLatitude
    :type cl:float
    :initform 0.0)
   (DestinationLongitude
    :reader DestinationLongitude
    :initarg :DestinationLongitude
    :type cl:float
    :initform 0.0))
)

(cl:defclass VehicleBaseRes (<VehicleBaseRes>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleBaseRes>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleBaseRes)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_base-msg:<VehicleBaseRes> is deprecated: use vehicle_base-msg:VehicleBaseRes instead.")))

(cl:ensure-generic-function 'Seq-val :lambda-list '(m))
(cl:defmethod Seq-val ((m <VehicleBaseRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:Seq-val is deprecated.  Use vehicle_base-msg:Seq instead.")
  (Seq m))

(cl:ensure-generic-function 'Stamp-val :lambda-list '(m))
(cl:defmethod Stamp-val ((m <VehicleBaseRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:Stamp-val is deprecated.  Use vehicle_base-msg:Stamp instead.")
  (Stamp m))

(cl:ensure-generic-function 'Frame_ID-val :lambda-list '(m))
(cl:defmethod Frame_ID-val ((m <VehicleBaseRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:Frame_ID-val is deprecated.  Use vehicle_base-msg:Frame_ID instead.")
  (Frame_ID m))

(cl:ensure-generic-function 'BatteryVoltage-val :lambda-list '(m))
(cl:defmethod BatteryVoltage-val ((m <VehicleBaseRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:BatteryVoltage-val is deprecated.  Use vehicle_base-msg:BatteryVoltage instead.")
  (BatteryVoltage m))

(cl:ensure-generic-function 'BatteryCurrent-val :lambda-list '(m))
(cl:defmethod BatteryCurrent-val ((m <VehicleBaseRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:BatteryCurrent-val is deprecated.  Use vehicle_base-msg:BatteryCurrent instead.")
  (BatteryCurrent m))

(cl:ensure-generic-function 'BatteryCapacity-val :lambda-list '(m))
(cl:defmethod BatteryCapacity-val ((m <VehicleBaseRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:BatteryCapacity-val is deprecated.  Use vehicle_base-msg:BatteryCapacity instead.")
  (BatteryCapacity m))

(cl:ensure-generic-function 'BatteryRemaining-val :lambda-list '(m))
(cl:defmethod BatteryRemaining-val ((m <VehicleBaseRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:BatteryRemaining-val is deprecated.  Use vehicle_base-msg:BatteryRemaining instead.")
  (BatteryRemaining m))

(cl:ensure-generic-function 'BatteryTemperature-val :lambda-list '(m))
(cl:defmethod BatteryTemperature-val ((m <VehicleBaseRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:BatteryTemperature-val is deprecated.  Use vehicle_base-msg:BatteryTemperature instead.")
  (BatteryTemperature m))

(cl:ensure-generic-function 'LeftMotorSpeed-val :lambda-list '(m))
(cl:defmethod LeftMotorSpeed-val ((m <VehicleBaseRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:LeftMotorSpeed-val is deprecated.  Use vehicle_base-msg:LeftMotorSpeed instead.")
  (LeftMotorSpeed m))

(cl:ensure-generic-function 'LeftMotorCurrent-val :lambda-list '(m))
(cl:defmethod LeftMotorCurrent-val ((m <VehicleBaseRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:LeftMotorCurrent-val is deprecated.  Use vehicle_base-msg:LeftMotorCurrent instead.")
  (LeftMotorCurrent m))

(cl:ensure-generic-function 'LeftMotorTemp-val :lambda-list '(m))
(cl:defmethod LeftMotorTemp-val ((m <VehicleBaseRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:LeftMotorTemp-val is deprecated.  Use vehicle_base-msg:LeftMotorTemp instead.")
  (LeftMotorTemp m))

(cl:ensure-generic-function 'LeftMotorOdometer-val :lambda-list '(m))
(cl:defmethod LeftMotorOdometer-val ((m <VehicleBaseRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:LeftMotorOdometer-val is deprecated.  Use vehicle_base-msg:LeftMotorOdometer instead.")
  (LeftMotorOdometer m))

(cl:ensure-generic-function 'LeftMotorTorque-val :lambda-list '(m))
(cl:defmethod LeftMotorTorque-val ((m <VehicleBaseRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:LeftMotorTorque-val is deprecated.  Use vehicle_base-msg:LeftMotorTorque instead.")
  (LeftMotorTorque m))

(cl:ensure-generic-function 'RightMotorSpeed-val :lambda-list '(m))
(cl:defmethod RightMotorSpeed-val ((m <VehicleBaseRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:RightMotorSpeed-val is deprecated.  Use vehicle_base-msg:RightMotorSpeed instead.")
  (RightMotorSpeed m))

(cl:ensure-generic-function 'RightMotorCurrent-val :lambda-list '(m))
(cl:defmethod RightMotorCurrent-val ((m <VehicleBaseRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:RightMotorCurrent-val is deprecated.  Use vehicle_base-msg:RightMotorCurrent instead.")
  (RightMotorCurrent m))

(cl:ensure-generic-function 'RightMotorTemp-val :lambda-list '(m))
(cl:defmethod RightMotorTemp-val ((m <VehicleBaseRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:RightMotorTemp-val is deprecated.  Use vehicle_base-msg:RightMotorTemp instead.")
  (RightMotorTemp m))

(cl:ensure-generic-function 'RightMotorOdometer-val :lambda-list '(m))
(cl:defmethod RightMotorOdometer-val ((m <VehicleBaseRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:RightMotorOdometer-val is deprecated.  Use vehicle_base-msg:RightMotorOdometer instead.")
  (RightMotorOdometer m))

(cl:ensure-generic-function 'RightMotorTorque-val :lambda-list '(m))
(cl:defmethod RightMotorTorque-val ((m <VehicleBaseRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:RightMotorTorque-val is deprecated.  Use vehicle_base-msg:RightMotorTorque instead.")
  (RightMotorTorque m))

(cl:ensure-generic-function 'CurrentLatitude-val :lambda-list '(m))
(cl:defmethod CurrentLatitude-val ((m <VehicleBaseRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:CurrentLatitude-val is deprecated.  Use vehicle_base-msg:CurrentLatitude instead.")
  (CurrentLatitude m))

(cl:ensure-generic-function 'CurrentLongitude-val :lambda-list '(m))
(cl:defmethod CurrentLongitude-val ((m <VehicleBaseRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:CurrentLongitude-val is deprecated.  Use vehicle_base-msg:CurrentLongitude instead.")
  (CurrentLongitude m))

(cl:ensure-generic-function 'CompassRoll-val :lambda-list '(m))
(cl:defmethod CompassRoll-val ((m <VehicleBaseRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:CompassRoll-val is deprecated.  Use vehicle_base-msg:CompassRoll instead.")
  (CompassRoll m))

(cl:ensure-generic-function 'CompassPitch-val :lambda-list '(m))
(cl:defmethod CompassPitch-val ((m <VehicleBaseRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:CompassPitch-val is deprecated.  Use vehicle_base-msg:CompassPitch instead.")
  (CompassPitch m))

(cl:ensure-generic-function 'CompassYaw-val :lambda-list '(m))
(cl:defmethod CompassYaw-val ((m <VehicleBaseRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:CompassYaw-val is deprecated.  Use vehicle_base-msg:CompassYaw instead.")
  (CompassYaw m))

(cl:ensure-generic-function 'RCThrottle-val :lambda-list '(m))
(cl:defmethod RCThrottle-val ((m <VehicleBaseRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:RCThrottle-val is deprecated.  Use vehicle_base-msg:RCThrottle instead.")
  (RCThrottle m))

(cl:ensure-generic-function 'RCSteeringAngle-val :lambda-list '(m))
(cl:defmethod RCSteeringAngle-val ((m <VehicleBaseRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:RCSteeringAngle-val is deprecated.  Use vehicle_base-msg:RCSteeringAngle instead.")
  (RCSteeringAngle m))

(cl:ensure-generic-function 'RCMotorPower-val :lambda-list '(m))
(cl:defmethod RCMotorPower-val ((m <VehicleBaseRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:RCMotorPower-val is deprecated.  Use vehicle_base-msg:RCMotorPower instead.")
  (RCMotorPower m))

(cl:ensure-generic-function 'RCSpeedMode-val :lambda-list '(m))
(cl:defmethod RCSpeedMode-val ((m <VehicleBaseRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:RCSpeedMode-val is deprecated.  Use vehicle_base-msg:RCSpeedMode instead.")
  (RCSpeedMode m))

(cl:ensure-generic-function 'RCLeftBrake-val :lambda-list '(m))
(cl:defmethod RCLeftBrake-val ((m <VehicleBaseRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:RCLeftBrake-val is deprecated.  Use vehicle_base-msg:RCLeftBrake instead.")
  (RCLeftBrake m))

(cl:ensure-generic-function 'RCRightBrake-val :lambda-list '(m))
(cl:defmethod RCRightBrake-val ((m <VehicleBaseRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:RCRightBrake-val is deprecated.  Use vehicle_base-msg:RCRightBrake instead.")
  (RCRightBrake m))

(cl:ensure-generic-function 'RCRoboticArmPwr-val :lambda-list '(m))
(cl:defmethod RCRoboticArmPwr-val ((m <VehicleBaseRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:RCRoboticArmPwr-val is deprecated.  Use vehicle_base-msg:RCRoboticArmPwr instead.")
  (RCRoboticArmPwr m))

(cl:ensure-generic-function 'RCNavigationCmd-val :lambda-list '(m))
(cl:defmethod RCNavigationCmd-val ((m <VehicleBaseRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:RCNavigationCmd-val is deprecated.  Use vehicle_base-msg:RCNavigationCmd instead.")
  (RCNavigationCmd m))

(cl:ensure-generic-function 'DestinationLatitude-val :lambda-list '(m))
(cl:defmethod DestinationLatitude-val ((m <VehicleBaseRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:DestinationLatitude-val is deprecated.  Use vehicle_base-msg:DestinationLatitude instead.")
  (DestinationLatitude m))

(cl:ensure-generic-function 'DestinationLongitude-val :lambda-list '(m))
(cl:defmethod DestinationLongitude-val ((m <VehicleBaseRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:DestinationLongitude-val is deprecated.  Use vehicle_base-msg:DestinationLongitude instead.")
  (DestinationLongitude m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleBaseRes>) ostream)
  "Serializes a message object of type '<VehicleBaseRes>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Seq)) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'Stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'Stamp) (cl:floor (cl:slot-value msg 'Stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Frame_ID))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Frame_ID))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'BatteryVoltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'BatteryCurrent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'BatteryCapacity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'BatteryRemaining))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'BatteryTemperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'LeftMotorSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'LeftMotorCurrent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'LeftMotorTemp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'LeftMotorOdometer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'LeftMotorTorque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'RightMotorSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'RightMotorCurrent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'RightMotorTemp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'RightMotorOdometer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'RightMotorTorque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CurrentLatitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CurrentLongitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CompassRoll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CompassPitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CompassYaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'RCThrottle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'RCSteeringAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RCMotorPower)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RCSpeedMode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RCLeftBrake)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RCRightBrake)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RCRoboticArmPwr)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RCNavigationCmd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'RCNavigationCmd)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'DestinationLatitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'DestinationLongitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleBaseRes>) istream)
  "Deserializes a message object of type '<VehicleBaseRes>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Seq)) (cl:read-byte istream))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Frame_ID) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Frame_ID) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'BatteryVoltage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'BatteryCurrent) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'BatteryCapacity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'BatteryRemaining) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'BatteryTemperature) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LeftMotorSpeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LeftMotorCurrent) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LeftMotorTemp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LeftMotorOdometer) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LeftMotorTorque) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'RightMotorSpeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'RightMotorCurrent) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'RightMotorTemp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'RightMotorOdometer) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'RightMotorTorque) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CurrentLatitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CurrentLongitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CompassRoll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CompassPitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CompassYaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'RCThrottle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'RCSteeringAngle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RCMotorPower)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RCSpeedMode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RCLeftBrake)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RCRightBrake)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RCRoboticArmPwr)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RCNavigationCmd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'RCNavigationCmd)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'DestinationLatitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'DestinationLongitude) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleBaseRes>)))
  "Returns string type for a message object of type '<VehicleBaseRes>"
  "vehicle_base/VehicleBaseRes")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleBaseRes)))
  "Returns string type for a message object of type 'VehicleBaseRes"
  "vehicle_base/VehicleBaseRes")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleBaseRes>)))
  "Returns md5sum for a message object of type '<VehicleBaseRes>"
  "bae689aab53c62fef1daf5a5bd9e72cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleBaseRes)))
  "Returns md5sum for a message object of type 'VehicleBaseRes"
  "bae689aab53c62fef1daf5a5bd9e72cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleBaseRes>)))
  "Returns full string definition for message of type '<VehicleBaseRes>"
  (cl:format cl:nil "#Name of the topic: vehicle_response~%#~%#Publish rate is related to the Sending command rate~%#~%#~%#Standard metadata for higher-level flow data types~%#sequence ID: consecutively increasing ID~%uint32 Seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time Stamp~%#Frame this data is associated with~%string Frame_ID~%#Battery voltage, uint: V~%float32 BatteryVoltage~%#Battery current, uint: A~%float32 BatteryCurrent~%#Battery capacity, range: (0 - 1) ---- (0% - 100%)~%float32 BatteryCapacity~%#Battery remaining, uint: Ah~%float32 BatteryRemaining~%#Battery Temperature, uint: C~%float32 BatteryTemperature~%#Left motor speed, uint: km/h~%float32 LeftMotorSpeed~%#Left motor current, uint: A~%float32 LeftMotorCurrent~%#Left motor Temperature, uint: C~%float32 LeftMotorTemp~%#Left motor odometer, uint: km~%float32 LeftMotorOdometer~%#Left motor torque, uint: Nm~%float32 LeftMotorTorque~%#Right motor speed, uint: km/h~%float32 RightMotorSpeed~%#Right motor current, uint: A~%float32 RightMotorCurrent~%#Right motor Temperature, uint: C~%float32 RightMotorTemp~%#Right motor odometer, uint: km~%float32 RightMotorOdometer~%#Right motor torque, uint: Nm~%float32 RightMotorTorque~%#Current Latitude~%float32 CurrentLatitude~%#Current Longititude~%float32 CurrentLongitude~%#Compass Roll~%float32 CompassRoll~%#Compass Pitch~%float32 CompassPitch~%#Compass Yaw~%float32 CompassYaw~%#Remote controller Throttle value for the vehicle,range: -1.0 - 1.0 <----> -100%(reverse) ~ 100%(forward)~%float32 RCThrottle~%#Remote controller Steering Angle for the vehicle,range: -1.0 - 1.0 <----> -90 Degree(turn left) ~ 90 Degree(turn right)~%float32 RCSteeringAngle~%#Remote controller motor power: on---bigger than 0, off---0~%uint8 RCMotorPower~%#Remote controller Speed mode: High speed mode---bigger than 0, low speed mode---0~%uint8 RCSpeedMode~%#Remote controller Left brake value: on---bigger than 0, off---0~%uint8 RCLeftBrake~%#Remote controller Right brake value: on---bigger than 0, off---0~%uint8 RCRightBrake~%#Robotic Arm power: on---bigger than 0, off---0~%uint8 RCRoboticArmPwr~%#Navigation Command~%#  ~%#  0x8000 ----- Cancel the navigation operation~%#  0x8001 ----- Set base coordinate for the RTB~%#  0x8002 ----- Start RTB~%#  0x8004 ----- Pause RTB~%#  0x8008 ----- Start recording the route for the RTB~%#  0x8010 ----- Set Destination for the 2 Point Way Navigation~%#  0x8020 ----- Start the 2 Point Way Navigation~%#  0x8040 ----- Pause the 2 Point Way Navigation~%#~%#  0x9000 ----- Emergency Stop~%#  Others ----- Nope~%#~%uint16 RCNavigationCmd~%#Destination Latitude~%float32 DestinationLatitude~%#Destination Longititude~%float32 DestinationLongitude~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleBaseRes)))
  "Returns full string definition for message of type 'VehicleBaseRes"
  (cl:format cl:nil "#Name of the topic: vehicle_response~%#~%#Publish rate is related to the Sending command rate~%#~%#~%#Standard metadata for higher-level flow data types~%#sequence ID: consecutively increasing ID~%uint32 Seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time Stamp~%#Frame this data is associated with~%string Frame_ID~%#Battery voltage, uint: V~%float32 BatteryVoltage~%#Battery current, uint: A~%float32 BatteryCurrent~%#Battery capacity, range: (0 - 1) ---- (0% - 100%)~%float32 BatteryCapacity~%#Battery remaining, uint: Ah~%float32 BatteryRemaining~%#Battery Temperature, uint: C~%float32 BatteryTemperature~%#Left motor speed, uint: km/h~%float32 LeftMotorSpeed~%#Left motor current, uint: A~%float32 LeftMotorCurrent~%#Left motor Temperature, uint: C~%float32 LeftMotorTemp~%#Left motor odometer, uint: km~%float32 LeftMotorOdometer~%#Left motor torque, uint: Nm~%float32 LeftMotorTorque~%#Right motor speed, uint: km/h~%float32 RightMotorSpeed~%#Right motor current, uint: A~%float32 RightMotorCurrent~%#Right motor Temperature, uint: C~%float32 RightMotorTemp~%#Right motor odometer, uint: km~%float32 RightMotorOdometer~%#Right motor torque, uint: Nm~%float32 RightMotorTorque~%#Current Latitude~%float32 CurrentLatitude~%#Current Longititude~%float32 CurrentLongitude~%#Compass Roll~%float32 CompassRoll~%#Compass Pitch~%float32 CompassPitch~%#Compass Yaw~%float32 CompassYaw~%#Remote controller Throttle value for the vehicle,range: -1.0 - 1.0 <----> -100%(reverse) ~ 100%(forward)~%float32 RCThrottle~%#Remote controller Steering Angle for the vehicle,range: -1.0 - 1.0 <----> -90 Degree(turn left) ~ 90 Degree(turn right)~%float32 RCSteeringAngle~%#Remote controller motor power: on---bigger than 0, off---0~%uint8 RCMotorPower~%#Remote controller Speed mode: High speed mode---bigger than 0, low speed mode---0~%uint8 RCSpeedMode~%#Remote controller Left brake value: on---bigger than 0, off---0~%uint8 RCLeftBrake~%#Remote controller Right brake value: on---bigger than 0, off---0~%uint8 RCRightBrake~%#Robotic Arm power: on---bigger than 0, off---0~%uint8 RCRoboticArmPwr~%#Navigation Command~%#  ~%#  0x8000 ----- Cancel the navigation operation~%#  0x8001 ----- Set base coordinate for the RTB~%#  0x8002 ----- Start RTB~%#  0x8004 ----- Pause RTB~%#  0x8008 ----- Start recording the route for the RTB~%#  0x8010 ----- Set Destination for the 2 Point Way Navigation~%#  0x8020 ----- Start the 2 Point Way Navigation~%#  0x8040 ----- Pause the 2 Point Way Navigation~%#~%#  0x9000 ----- Emergency Stop~%#  Others ----- Nope~%#~%uint16 RCNavigationCmd~%#Destination Latitude~%float32 DestinationLatitude~%#Destination Longititude~%float32 DestinationLongitude~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleBaseRes>))
  (cl:+ 0
     4
     8
     4 (cl:length (cl:slot-value msg 'Frame_ID))
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     1
     1
     1
     1
     1
     2
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleBaseRes>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleBaseRes
    (cl:cons ':Seq (Seq msg))
    (cl:cons ':Stamp (Stamp msg))
    (cl:cons ':Frame_ID (Frame_ID msg))
    (cl:cons ':BatteryVoltage (BatteryVoltage msg))
    (cl:cons ':BatteryCurrent (BatteryCurrent msg))
    (cl:cons ':BatteryCapacity (BatteryCapacity msg))
    (cl:cons ':BatteryRemaining (BatteryRemaining msg))
    (cl:cons ':BatteryTemperature (BatteryTemperature msg))
    (cl:cons ':LeftMotorSpeed (LeftMotorSpeed msg))
    (cl:cons ':LeftMotorCurrent (LeftMotorCurrent msg))
    (cl:cons ':LeftMotorTemp (LeftMotorTemp msg))
    (cl:cons ':LeftMotorOdometer (LeftMotorOdometer msg))
    (cl:cons ':LeftMotorTorque (LeftMotorTorque msg))
    (cl:cons ':RightMotorSpeed (RightMotorSpeed msg))
    (cl:cons ':RightMotorCurrent (RightMotorCurrent msg))
    (cl:cons ':RightMotorTemp (RightMotorTemp msg))
    (cl:cons ':RightMotorOdometer (RightMotorOdometer msg))
    (cl:cons ':RightMotorTorque (RightMotorTorque msg))
    (cl:cons ':CurrentLatitude (CurrentLatitude msg))
    (cl:cons ':CurrentLongitude (CurrentLongitude msg))
    (cl:cons ':CompassRoll (CompassRoll msg))
    (cl:cons ':CompassPitch (CompassPitch msg))
    (cl:cons ':CompassYaw (CompassYaw msg))
    (cl:cons ':RCThrottle (RCThrottle msg))
    (cl:cons ':RCSteeringAngle (RCSteeringAngle msg))
    (cl:cons ':RCMotorPower (RCMotorPower msg))
    (cl:cons ':RCSpeedMode (RCSpeedMode msg))
    (cl:cons ':RCLeftBrake (RCLeftBrake msg))
    (cl:cons ':RCRightBrake (RCRightBrake msg))
    (cl:cons ':RCRoboticArmPwr (RCRoboticArmPwr msg))
    (cl:cons ':RCNavigationCmd (RCNavigationCmd msg))
    (cl:cons ':DestinationLatitude (DestinationLatitude msg))
    (cl:cons ':DestinationLongitude (DestinationLongitude msg))
))
