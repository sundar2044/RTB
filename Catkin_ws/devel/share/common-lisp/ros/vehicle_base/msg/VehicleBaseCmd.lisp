; Auto-generated. Do not edit!


(cl:in-package vehicle_base-msg)


;//! \htmlinclude VehicleBaseCmd.msg.html

(cl:defclass <VehicleBaseCmd> (roslisp-msg-protocol:ros-message)
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
   (Throttle
    :reader Throttle
    :initarg :Throttle
    :type cl:float
    :initform 0.0)
   (SteeringAngle
    :reader SteeringAngle
    :initarg :SteeringAngle
    :type cl:float
    :initform 0.0)
   (SpeedMode
    :reader SpeedMode
    :initarg :SpeedMode
    :type cl:fixnum
    :initform 0)
   (LeftBrake
    :reader LeftBrake
    :initarg :LeftBrake
    :type cl:fixnum
    :initform 0)
   (RightBrake
    :reader RightBrake
    :initarg :RightBrake
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VehicleBaseCmd (<VehicleBaseCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleBaseCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleBaseCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_base-msg:<VehicleBaseCmd> is deprecated: use vehicle_base-msg:VehicleBaseCmd instead.")))

(cl:ensure-generic-function 'Seq-val :lambda-list '(m))
(cl:defmethod Seq-val ((m <VehicleBaseCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:Seq-val is deprecated.  Use vehicle_base-msg:Seq instead.")
  (Seq m))

(cl:ensure-generic-function 'Stamp-val :lambda-list '(m))
(cl:defmethod Stamp-val ((m <VehicleBaseCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:Stamp-val is deprecated.  Use vehicle_base-msg:Stamp instead.")
  (Stamp m))

(cl:ensure-generic-function 'Frame_ID-val :lambda-list '(m))
(cl:defmethod Frame_ID-val ((m <VehicleBaseCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:Frame_ID-val is deprecated.  Use vehicle_base-msg:Frame_ID instead.")
  (Frame_ID m))

(cl:ensure-generic-function 'Throttle-val :lambda-list '(m))
(cl:defmethod Throttle-val ((m <VehicleBaseCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:Throttle-val is deprecated.  Use vehicle_base-msg:Throttle instead.")
  (Throttle m))

(cl:ensure-generic-function 'SteeringAngle-val :lambda-list '(m))
(cl:defmethod SteeringAngle-val ((m <VehicleBaseCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:SteeringAngle-val is deprecated.  Use vehicle_base-msg:SteeringAngle instead.")
  (SteeringAngle m))

(cl:ensure-generic-function 'SpeedMode-val :lambda-list '(m))
(cl:defmethod SpeedMode-val ((m <VehicleBaseCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:SpeedMode-val is deprecated.  Use vehicle_base-msg:SpeedMode instead.")
  (SpeedMode m))

(cl:ensure-generic-function 'LeftBrake-val :lambda-list '(m))
(cl:defmethod LeftBrake-val ((m <VehicleBaseCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:LeftBrake-val is deprecated.  Use vehicle_base-msg:LeftBrake instead.")
  (LeftBrake m))

(cl:ensure-generic-function 'RightBrake-val :lambda-list '(m))
(cl:defmethod RightBrake-val ((m <VehicleBaseCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_base-msg:RightBrake-val is deprecated.  Use vehicle_base-msg:RightBrake instead.")
  (RightBrake m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleBaseCmd>) ostream)
  "Serializes a message object of type '<VehicleBaseCmd>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Throttle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'SteeringAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SpeedMode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LeftBrake)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RightBrake)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleBaseCmd>) istream)
  "Deserializes a message object of type '<VehicleBaseCmd>"
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
    (cl:setf (cl:slot-value msg 'Throttle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'SteeringAngle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SpeedMode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LeftBrake)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RightBrake)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleBaseCmd>)))
  "Returns string type for a message object of type '<VehicleBaseCmd>"
  "vehicle_base/VehicleBaseCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleBaseCmd)))
  "Returns string type for a message object of type 'VehicleBaseCmd"
  "vehicle_base/VehicleBaseCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleBaseCmd>)))
  "Returns md5sum for a message object of type '<VehicleBaseCmd>"
  "8436243e2cee53279e0d9fb27f7f5803")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleBaseCmd)))
  "Returns md5sum for a message object of type 'VehicleBaseCmd"
  "8436243e2cee53279e0d9fb27f7f5803")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleBaseCmd>)))
  "Returns full string definition for message of type '<VehicleBaseCmd>"
  (cl:format cl:nil "#Name of the topic: vehicle_command~%#~%#Sending command rate should be smaller than 10 per second. Recommanded rate is 5 per second.~%#~%#~%#Standard metadata for higher-level flow data types~%#sequence ID: consecutively increasing ID~%uint32 Seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time Stamp~%#Frame this data is associated with~%string Frame_ID~%#Throttle value for the vehicle,range: -1.0 - 1.0 <----> -100%(reverse) ~ 100%(forward)~%float32 Throttle~%#Steering Angle for the vehicle,range: -1.0 - 1.0 <----> -90 Degree(turn left) ~ 90 Degree(turn right)~%# ~%# When steering angle bigger than 0.5 (45 Degree), or smaller than -0.5 (-45 Degree)~%# Rotate by the center of vehicle with preset steerig angle and throttle:~%# The actural steering angle wil be set to +90 or -90 degree~%# The actural speed mode will be set to low speed mode~%# The actural throttle wil be set to 60% (need to test this preset value)~%#~%float32 SteeringAngle~%#Speed mode: High speed mode---bigger than 0, low speed mode---0~%uint8 SpeedMode~%#Left brake value: on---bigger than 0, off---0~%uint8 LeftBrake~%#Right brake value: on---bigger than 0, off---0~%uint8 RightBrake~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleBaseCmd)))
  "Returns full string definition for message of type 'VehicleBaseCmd"
  (cl:format cl:nil "#Name of the topic: vehicle_command~%#~%#Sending command rate should be smaller than 10 per second. Recommanded rate is 5 per second.~%#~%#~%#Standard metadata for higher-level flow data types~%#sequence ID: consecutively increasing ID~%uint32 Seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time Stamp~%#Frame this data is associated with~%string Frame_ID~%#Throttle value for the vehicle,range: -1.0 - 1.0 <----> -100%(reverse) ~ 100%(forward)~%float32 Throttle~%#Steering Angle for the vehicle,range: -1.0 - 1.0 <----> -90 Degree(turn left) ~ 90 Degree(turn right)~%# ~%# When steering angle bigger than 0.5 (45 Degree), or smaller than -0.5 (-45 Degree)~%# Rotate by the center of vehicle with preset steerig angle and throttle:~%# The actural steering angle wil be set to +90 or -90 degree~%# The actural speed mode will be set to low speed mode~%# The actural throttle wil be set to 60% (need to test this preset value)~%#~%float32 SteeringAngle~%#Speed mode: High speed mode---bigger than 0, low speed mode---0~%uint8 SpeedMode~%#Left brake value: on---bigger than 0, off---0~%uint8 LeftBrake~%#Right brake value: on---bigger than 0, off---0~%uint8 RightBrake~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleBaseCmd>))
  (cl:+ 0
     4
     8
     4 (cl:length (cl:slot-value msg 'Frame_ID))
     4
     4
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleBaseCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleBaseCmd
    (cl:cons ':Seq (Seq msg))
    (cl:cons ':Stamp (Stamp msg))
    (cl:cons ':Frame_ID (Frame_ID msg))
    (cl:cons ':Throttle (Throttle msg))
    (cl:cons ':SteeringAngle (SteeringAngle msg))
    (cl:cons ':SpeedMode (SpeedMode msg))
    (cl:cons ':LeftBrake (LeftBrake msg))
    (cl:cons ':RightBrake (RightBrake msg))
))
