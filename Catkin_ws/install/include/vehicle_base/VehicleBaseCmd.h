// Generated by gencpp from file vehicle_base/VehicleBaseCmd.msg
// DO NOT EDIT!


#ifndef VEHICLE_BASE_MESSAGE_VEHICLEBASECMD_H
#define VEHICLE_BASE_MESSAGE_VEHICLEBASECMD_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace vehicle_base
{
template <class ContainerAllocator>
struct VehicleBaseCmd_
{
  typedef VehicleBaseCmd_<ContainerAllocator> Type;

  VehicleBaseCmd_()
    : Seq(0)
    , Stamp()
    , Frame_ID()
    , Throttle(0.0)
    , SteeringAngle(0.0)
    , SpeedMode(0)
    , LeftBrake(0)
    , RightBrake(0)  {
    }
  VehicleBaseCmd_(const ContainerAllocator& _alloc)
    : Seq(0)
    , Stamp()
    , Frame_ID(_alloc)
    , Throttle(0.0)
    , SteeringAngle(0.0)
    , SpeedMode(0)
    , LeftBrake(0)
    , RightBrake(0)  {
  (void)_alloc;
    }



   typedef uint32_t _Seq_type;
  _Seq_type Seq;

   typedef ros::Time _Stamp_type;
  _Stamp_type Stamp;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _Frame_ID_type;
  _Frame_ID_type Frame_ID;

   typedef float _Throttle_type;
  _Throttle_type Throttle;

   typedef float _SteeringAngle_type;
  _SteeringAngle_type SteeringAngle;

   typedef uint8_t _SpeedMode_type;
  _SpeedMode_type SpeedMode;

   typedef uint8_t _LeftBrake_type;
  _LeftBrake_type LeftBrake;

   typedef uint8_t _RightBrake_type;
  _RightBrake_type RightBrake;




  typedef boost::shared_ptr< ::vehicle_base::VehicleBaseCmd_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vehicle_base::VehicleBaseCmd_<ContainerAllocator> const> ConstPtr;

}; // struct VehicleBaseCmd_

typedef ::vehicle_base::VehicleBaseCmd_<std::allocator<void> > VehicleBaseCmd;

typedef boost::shared_ptr< ::vehicle_base::VehicleBaseCmd > VehicleBaseCmdPtr;
typedef boost::shared_ptr< ::vehicle_base::VehicleBaseCmd const> VehicleBaseCmdConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::vehicle_base::VehicleBaseCmd_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::vehicle_base::VehicleBaseCmd_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace vehicle_base

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'vehicle_base': ['/home/jeff/RTB/Catkin_ws/src/vehicle_base/msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::vehicle_base::VehicleBaseCmd_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vehicle_base::VehicleBaseCmd_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vehicle_base::VehicleBaseCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vehicle_base::VehicleBaseCmd_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vehicle_base::VehicleBaseCmd_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vehicle_base::VehicleBaseCmd_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::vehicle_base::VehicleBaseCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8436243e2cee53279e0d9fb27f7f5803";
  }

  static const char* value(const ::vehicle_base::VehicleBaseCmd_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8436243e2cee5327ULL;
  static const uint64_t static_value2 = 0x9e0d9fb27f7f5803ULL;
};

template<class ContainerAllocator>
struct DataType< ::vehicle_base::VehicleBaseCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "vehicle_base/VehicleBaseCmd";
  }

  static const char* value(const ::vehicle_base::VehicleBaseCmd_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::vehicle_base::VehicleBaseCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#Name of the topic: vehicle_command\n\
#\n\
#Sending command rate should be smaller than 10 per second. Recommanded rate is 5 per second.\n\
#\n\
#\n\
#Standard metadata for higher-level flow data types\n\
#sequence ID: consecutively increasing ID\n\
uint32 Seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.secs: seconds (stamp_secs) since epoch\n\
# * stamp.nsecs: nanoseconds since stamp_secs\n\
# time-handling sugar is provided by the client library\n\
time Stamp\n\
#Frame this data is associated with\n\
string Frame_ID\n\
#Throttle value for the vehicle,range: -1.0 - 1.0 <----> -100%(reverse) ~ 100%(forward)\n\
float32 Throttle\n\
#Steering Angle for the vehicle,range: -1.0 - 1.0 <----> -90 Degree(turn left) ~ 90 Degree(turn right)\n\
# \n\
# When steering angle bigger than 0.5 (45 Degree), or smaller than -0.5 (-45 Degree)\n\
# Rotate by the center of vehicle with preset steerig angle and throttle:\n\
# The actural steering angle wil be set to +90 or -90 degree\n\
# The actural speed mode will be set to low speed mode\n\
# The actural throttle wil be set to 60% (need to test this preset value)\n\
#\n\
float32 SteeringAngle\n\
#Speed mode: High speed mode---bigger than 0, low speed mode---0\n\
uint8 SpeedMode\n\
#Left brake value: on---bigger than 0, off---0\n\
uint8 LeftBrake\n\
#Right brake value: on---bigger than 0, off---0\n\
uint8 RightBrake\n\
";
  }

  static const char* value(const ::vehicle_base::VehicleBaseCmd_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::vehicle_base::VehicleBaseCmd_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.Seq);
      stream.next(m.Stamp);
      stream.next(m.Frame_ID);
      stream.next(m.Throttle);
      stream.next(m.SteeringAngle);
      stream.next(m.SpeedMode);
      stream.next(m.LeftBrake);
      stream.next(m.RightBrake);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct VehicleBaseCmd_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::vehicle_base::VehicleBaseCmd_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::vehicle_base::VehicleBaseCmd_<ContainerAllocator>& v)
  {
    s << indent << "Seq: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.Seq);
    s << indent << "Stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.Stamp);
    s << indent << "Frame_ID: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.Frame_ID);
    s << indent << "Throttle: ";
    Printer<float>::stream(s, indent + "  ", v.Throttle);
    s << indent << "SteeringAngle: ";
    Printer<float>::stream(s, indent + "  ", v.SteeringAngle);
    s << indent << "SpeedMode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.SpeedMode);
    s << indent << "LeftBrake: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.LeftBrake);
    s << indent << "RightBrake: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.RightBrake);
  }
};

} // namespace message_operations
} // namespace ros

#endif // VEHICLE_BASE_MESSAGE_VEHICLEBASECMD_H
