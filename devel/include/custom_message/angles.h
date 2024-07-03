// Generated by gencpp from file custom_message/angles.msg
// DO NOT EDIT!


#ifndef CUSTOM_MESSAGE_MESSAGE_ANGLES_H
#define CUSTOM_MESSAGE_MESSAGE_ANGLES_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Float64.h>
#include <std_msgs/Float64.h>
#include <std_msgs/Float64.h>

namespace custom_message
{
template <class ContainerAllocator>
struct angles_
{
  typedef angles_<ContainerAllocator> Type;

  angles_()
    : theta1()
    , theta2()
    , theta3()  {
    }
  angles_(const ContainerAllocator& _alloc)
    : theta1(_alloc)
    , theta2(_alloc)
    , theta3(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Float64_<ContainerAllocator>  _theta1_type;
  _theta1_type theta1;

   typedef  ::std_msgs::Float64_<ContainerAllocator>  _theta2_type;
  _theta2_type theta2;

   typedef  ::std_msgs::Float64_<ContainerAllocator>  _theta3_type;
  _theta3_type theta3;





  typedef boost::shared_ptr< ::custom_message::angles_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::custom_message::angles_<ContainerAllocator> const> ConstPtr;

}; // struct angles_

typedef ::custom_message::angles_<std::allocator<void> > angles;

typedef boost::shared_ptr< ::custom_message::angles > anglesPtr;
typedef boost::shared_ptr< ::custom_message::angles const> anglesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::custom_message::angles_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::custom_message::angles_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::custom_message::angles_<ContainerAllocator1> & lhs, const ::custom_message::angles_<ContainerAllocator2> & rhs)
{
  return lhs.theta1 == rhs.theta1 &&
    lhs.theta2 == rhs.theta2 &&
    lhs.theta3 == rhs.theta3;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::custom_message::angles_<ContainerAllocator1> & lhs, const ::custom_message::angles_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace custom_message

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::custom_message::angles_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_message::angles_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::custom_message::angles_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::custom_message::angles_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_message::angles_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_message::angles_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::custom_message::angles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "354d100d75e8581dc7dd85b447e1a363";
  }

  static const char* value(const ::custom_message::angles_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x354d100d75e8581dULL;
  static const uint64_t static_value2 = 0xc7dd85b447e1a363ULL;
};

template<class ContainerAllocator>
struct DataType< ::custom_message::angles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "custom_message/angles";
  }

  static const char* value(const ::custom_message::angles_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::custom_message::angles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Float64 theta1\n"
"std_msgs/Float64 theta2\n"
"std_msgs/Float64 theta3\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Float64\n"
"float64 data\n"
;
  }

  static const char* value(const ::custom_message::angles_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::custom_message::angles_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.theta1);
      stream.next(m.theta2);
      stream.next(m.theta3);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct angles_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::custom_message::angles_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::custom_message::angles_<ContainerAllocator>& v)
  {
    s << indent << "theta1: ";
    s << std::endl;
    Printer< ::std_msgs::Float64_<ContainerAllocator> >::stream(s, indent + "  ", v.theta1);
    s << indent << "theta2: ";
    s << std::endl;
    Printer< ::std_msgs::Float64_<ContainerAllocator> >::stream(s, indent + "  ", v.theta2);
    s << indent << "theta3: ";
    s << std::endl;
    Printer< ::std_msgs::Float64_<ContainerAllocator> >::stream(s, indent + "  ", v.theta3);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CUSTOM_MESSAGE_MESSAGE_ANGLES_H
